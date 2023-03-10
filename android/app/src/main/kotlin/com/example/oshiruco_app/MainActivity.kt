package com.example.oshiruco_app

import android.accounts.AccountManager
import android.app.NotificationManager
import android.content.Context
import android.content.Intent
import android.os.Build
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val _channel = "jp.cayto.oshiruco"
    private val _ACTION_SELECT_ACCOUNT: Int = 100
    private var _result: MethodChannel.Result? = null

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, _channel).setMethodCallHandler { call, result ->
            if (call.method == "setNotificationBadgeNumber") {
                clearNotificationBadge(call.arguments as? Int ?: 0)
                result.success(null)
            } else if (call.method == "chooseAccount") {
                _result = result
                chooseAccount()
            } else {
                result.notImplemented()
            }
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        if (requestCode != _ACTION_SELECT_ACCOUNT) {
            super.onActivityResult(requestCode, resultCode, data)
            return
        }

        if (data != null) {
            _result?.success(data.getStringExtra(AccountManager.KEY_ACCOUNT_NAME))
        } else {
            _result?.success("")
        }
    }

    private fun clearNotificationBadge(number: Int) {
        if (number != 0) return
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.M) return

        val notificationManager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager?
        notificationManager?.cancelAll()
    }

    private fun chooseAccount() {
        val intent = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            AccountManager.newChooseAccountIntent(null, null, arrayOf("com.google"), null, null, null, null)
        } else {
            AccountManager.newChooseAccountIntent(null, null, arrayOf("com.google"), false, null, null, null, null)
        }
        startActivityForResult(intent, _ACTION_SELECT_ACCOUNT)
    }
}
