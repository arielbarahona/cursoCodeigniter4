<?php
namespace App\Commands\Models;

use CodeIgniter\CLI\BaseCommand;
class CreateModel extends BaseCommand{
    /**
	 * The group the command is lumped under
	 * when listing commands.
	 *
	 * @var string
	 */
	protected $group = 'Models';

	/**
	 * The Command's name
	 *
	 * @var string
	 */
	protected $name = 'model:create';

	/**
	 * the Command's short description
	 *
	 * @var string
	 */
	protected $description = 'Creates a new model file.';

	/**
	 * the Command's usage
	 *
	 * @var string
	 */
	protected $usage = 'model:create [model_name] [Options]';

	/**
	 * the Command's Arguments
	 *
	 * @var array
	 */
	protected $arguments = [
		'model_name' => 'The model file name'
	];

	/**
	 * the Command's Options
	 *
	 * @var array
	 */
	protected $options = [
		'-n' => 'Set model namespace'
	];

	/**
	 * Creates a new controller file
	 *
	 * @param array $params
	 */
	public function run(array $params = [])
	{
		$name = array_shift($params);

		if (empty($name))
		{
			$name = CLI::prompt('El nombre del modelo es requerido');
		}

		if (empty($name))
		{
			CLI::error('Nombre incorrecto');
			return;
		}
		$ns = CLI::getOption('n');
		$homepath = APPPATH;

		if ( ! empty($ns))
		{
			// Get all namespaces form  PSR4 paths.
			$config = new Autoload();
			$namespaces = $config->psr4;

			foreach ($namespaces as $namespace => $path)
			{
				if ($namespace == $ns)
				{
					$homepath = realpath($path);
					break;
				}
			}
		}
		else
		{
			$ns = "App";
		}

		$path = $homepath . '/Models/' . $name . '.php';

		$template = <<<EOD
<?php namespace App\Models;

use CodeIgniter\Model;

class {name} extends Model
{

}

EOD;
		$template = str_replace('{name}', $name, $template);

		helper('filesystem');
		if ( ! write_file($path, $template))
		{
			CLI::error('Error escribiendo el archivo');
			return;
		}

		CLI::write('Created file: ' . CLI::color(str_replace($homepath, $ns, $path), 'green'));
	}

}

















