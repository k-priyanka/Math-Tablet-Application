package com.priyanka;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

/**
 * Created by aditi on 5/29/15.
 */
public class MainActivity extends Activity {
    private EditText IPandPort;
    private Button Session1Button;
    private Button Session2Button;
    private Button Session3Button;
    private Button Session4Button;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.start_screen);

        IPandPort = (EditText) findViewById(R.id.IPandPort);
        Session1Button = (Button) findViewById(R.id.Session1Button);
        Session2Button = (Button) findViewById(R.id.Session2Button);
        Session3Button = (Button) findViewById(R.id.Session3Button);
        Session4Button = (Button) findViewById(R.id.Session4Button);


    }

    public void startMathSession(View view) {
        Intent intent = new Intent(this, com.priyanka.MathActivity.class);
        startActivity(intent);
    }
}
