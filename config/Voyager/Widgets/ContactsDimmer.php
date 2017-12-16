<?php
namespace TCG\Voyager\Widgets;
use App\Person;
use TCG\Voyager\Facades\Voyager;
use Arrilot\Widgets\AbstractWidget;
class ContactsDimmer extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];
    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = Person::all()->count();
        $string = $count == 1 ? 'Персонал' : 'Персонал';
        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-people',
            'title'  => "{$count} {$string}",
            'text'   => "У Вас {$count} людей.",
            'button' => [
                'text' => 'Посмотреть всех',
                'link' => route('voyager.persons.index'),
            ],
            'image' => asset('voyager/contacts.jpg'),
        ]));
    }
}