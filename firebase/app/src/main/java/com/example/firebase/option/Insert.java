package com.example.firebase.option;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.example.firebase.Dobject;
import com.example.firebase.R;
import com.example.firebase.User;

public class Insert extends AppCompatActivity {
    Button insertbutton;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_insert);
        final EditText name = findViewById(R.id.name);
        final EditText id = findViewById(R.id.id);
        insertbutton = findViewById(R.id.btnInsert);
        Dobject dobject = new Dobject();
        insertbutton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                User user = new User(name.getText().toString(),id.getText().toString());
                dobject.add(user).addOnSuccessListener(suc ->{
                    Toast.makeText(Insert.this, "added", Toast.LENGTH_SHORT).show();
                }).addOnCompleteListener(er ->
                {
                    Toast.makeText(Insert.this, "failed", Toast.LENGTH_SHORT).show();
                });

            }

        });

    }
}