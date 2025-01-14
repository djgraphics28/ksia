<?php

namespace App\Http\Middleware;

use App\Models\Core\Setting\Setting;
use App\Repositories\Core\Setting\SettingRepository;
use Carbon\Carbon;
use Closure;

/**
 * Class LocaleMiddleware.
 */
class LocaleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure                 $next
     *
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // Set the Laravel locale
        try{
            $language = resolve(SettingRepository::class)
                ->findAppSettingWithName('language');
        }catch (\Exception $e){
            $language = null;
        }

        app()->setLocale( $language ? $language->value : 'en');

        // setLocale for php. Enables ->formatLocalized() with localized values for dates
        setlocale(LC_TIME, session()->get('locale'));

        // setLocale to use Carbon source locales. Enables diffForHumans() localized
        Carbon::setLocale(session()->get('locale'));

        /*
         * Set the session variable for whether or not the app is using RTL support
         * for the current language being selected
         * For use in the blade directive in BladeServiceProvider
         */
        if (session()->get('locale')) {
            session(['lang-rtl' => true]);
        } else {
            session()->forget('lang-rtl');
        }

        return $next($request);
    }
}
