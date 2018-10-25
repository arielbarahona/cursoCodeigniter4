<?php
namespace App\Libraries;

use App\Models\User;
use CodeIgniter\Config\Services;

class Auth {

	/**
	 * @param string $to
	 * @param string $subject
	 * @param string $name
	 * @param string $view
	 */
	public static function sendEmail (string $to, string $subject, string $name, string $view) {
		$email = Services::email();
		$filename = './images/welcome.jpg';
		$email->attach($filename);
		$email->setTo($to);
		$email->setSubject($subject);
		$cid = $email->setAttachmentCID($filename); //embeber imagenes
		$email->setMessage(view(
			$view, [
				'name' => $name,
				'cid' => $cid
			]
		));
		$email->send();
	}

	public static function generateUserSession (\stdClass $user) {
		session()->set([
			'id' => $user->id,
			'name' => $user->name,
			'email' => $user->email,
			'picture' => $user->picture,
		]);
	}
}