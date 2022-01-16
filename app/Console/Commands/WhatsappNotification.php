<?php

namespace App\Console\Commands;

use App\Models\Message;
use Illuminate\Console\Command;
use App\Models\NotificationBill;
use App\Models\Pic;
use App\Models\Project;
use Carbon\Carbon;
use Twilio\Rest\Client;

class WhatsappNotification extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'wa:send';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $billsFound = NotificationBill::get();
        // dd($billsFound);

        // $message = Message::where('isUsed', 1)->first();
        $find = ['{_pic_}', '{_projek_}', '{_nominal_}', '{_angka_}', '{_tanggalbayar_}'];
        for ($i = 0; $i < count($billsFound); $i++) {
            $bills = NotificationBill::with(['client', 'project', 'pic'])->where('start_date', Carbon::now()->addDay($billsFound[$i]->before_due)->toDateString())->get();
            $datas[] = $bills;
        }

        $unique = array_unique($datas);
        // dump($unique);
        $mergeUnique = array_merge($unique[0]->toArray(), $unique[1]->toArray());
        // dump($mergeUnique);
        foreach ($mergeUnique as $key => $mergeData) {
            $replace = [$mergeData['pic']['name'], $mergeData['project']['name'], 'Rp' . number_format($mergeData['project']['monthly_fee']), $mergeData['before_due'], Carbon::parse($mergeData['start_date'])->translatedFormat('d F Y')];
            $messageFilter = str_replace($find, $replace, $mergeData['message']);
            $this->whatsappNotification($mergeData['pic']['phone_number'], $messageFilter);
        }
        if (count($billsFound) > 0) {
            echo $this->info('Pesan Terkirim');
        } else {
            echo $this->info('Terdapat kesalahan, Pesan gagal dikirim');
        }
    }
    public function whatsappNotification(string $recipient, $message)
    {
        $sid = getenv("TWILIO_AUTH_SID");
        $token = getenv("TWILIO_AUTH_TOKEN");
        $from = getenv("TWILIO_WHATSAPP_FROM");
        $twilio = new Client($sid, $token);
        return $twilio->messages->create("whatsapp:$recipient", ["from" => "whatsapp:$from", "body" => $message]);
    }
    public function getLogsTwilio()
    {
        $sid = getenv("TWILIO_AUTH_SID");
        $token = getenv("TWILIO_AUTH_TOKEN");
        $from = getenv("TWILIO_WHATSAPP_FROM");
        // dd($sid . " | " . $token . "|" . $from);
        $twilio = new Client($sid, $token);

        $messages = $twilio->messages->read([], 1);
        return $messages;
    }
}
