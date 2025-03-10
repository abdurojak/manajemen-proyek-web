<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Throwable;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Http\Exceptions\HttpResponseException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class Handler extends ExceptionHandler
{
    /**
     * The list of the inputs that are never flashed to the session on validation exceptions.
     *
     * @var array<int, string>
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     */
    public function register(): void
    {
        $this->reportable(function (Throwable $e) {
            //
        });
    }

    public function render($request, Throwable $exception)
    {
        if ($request->expectsJson()) {
            if ($exception instanceof AuthorizationException) {
                return response()->json(['message' => 'Anda tidak memiliki akses ke proyek ini'], 403);
            }

            if ($exception instanceof AuthenticationException) {
                return response()->json(['message' => 'Silakan login terlebih dahulu'], 401);
            }

            if ($exception instanceof NotFoundHttpException) {
                return response()->json(['message' => 'Halaman tidak ditemukan'], 404);
            }

            if ($exception instanceof HttpResponseException) {
                return response()->json(['message' => $exception->getMessage()], $exception->getCode() ?: 400);
            }
        }

        return parent::render($request, $exception);
    }
}
