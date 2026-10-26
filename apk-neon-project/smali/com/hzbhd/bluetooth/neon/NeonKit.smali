.class public Lcom/hzbhd/bluetooth/neon/NeonKit;
.super Ljava/lang/Object;
.source "NeonKit.java"


# static fields
.field private static final ART:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final UI:Landroid/os/Handler;

.field private static lastKey:Ljava/lang/String;

.field private static repeat:I

.field private static shuffle:I

.field private static smsStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hzbhd/bluetooth/neon/NeonKit;->ART:Ljava/util/HashMap;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/hzbhd/bluetooth/neon/NeonKit;->UI:Landroid/os/Handler;

    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/hzbhd/bluetooth/neon/NeonKit;->shuffle:I

    .line 29
    sput v0, Lcom/hzbhd/bluetooth/neon/NeonKit;->repeat:I

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/hzbhd/bluetooth/neon/NeonKit;->lastKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 24
    sget-object v0, Lcom/hzbhd/bluetooth/neon/NeonKit;->ART:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/hzbhd/bluetooth/neon/NeonKit;->lastKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .line 24
    sget-object v0, Lcom/hzbhd/bluetooth/neon/NeonKit;->UI:Landroid/os/Handler;

    return-object v0
.end method

.method public static bind(Landroid/view/View;)V
    .locals 5

    .line 164
    const-string v0, "neon_repeat"

    const-string v1, "neon_sms"

    const-string v2, "neon_tracks"

    const-string v3, "neon_shuffle"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 165
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 166
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 167
    if-nez v3, :cond_0

    .line 168
    goto :goto_1

    .line 170
    :cond_0
    new-instance v4, Lcom/hzbhd/bluetooth/neon/NeonKit$2;

    invoke-direct {v4, v2}, Lcom/hzbhd/bluetooth/neon/NeonKit$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_1
    return-void
.end method

.method static fetch(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 107
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://itunes.apple.com/search?media=music&entity=song&limit=1&term="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hzbhd/bluetooth/neon/NeonKit;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "results"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 111
    return-object v0

    .line 113
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "artworkUrl100"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "100x100"

    const-string v1, "600x600"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 114
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 115
    const/16 p1, 0x1f40

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 116
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 117
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 118
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 119
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    return-object p1

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    return-object v0
.end method

.method public static onTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 5

    .line 62
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    nop

    .line 66
    const-string v0, ""

    if-nez p2, :cond_1

    move-object p2, v0

    .line 67
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    sget-object v2, Lcom/hzbhd/bluetooth/neon/NeonKit;->lastKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 69
    sput-object v1, Lcom/hzbhd/bluetooth/neon/NeonKit;->lastKey:Ljava/lang/String;

    .line 71
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 72
    const-string v3, "a"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v3, "b"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v3, "c"

    if-nez p3, :cond_2

    move-object p3, v0

    :cond_2
    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string p3, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, p3, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 76
    const-string p3, "tracks"

    const/16 v0, 0x3c

    invoke-static {p0, p3, v2, v0}, Lcom/hzbhd/bluetooth/neon/NeonKit;->push(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 80
    :cond_3
    :goto_0
    if-nez p4, :cond_4

    .line 81
    return-void

    .line 83
    :cond_4
    sget-object p0, Lcom/hzbhd/bluetooth/neon/NeonKit;->ART:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    .line 84
    if-eqz p0, :cond_5

    .line 85
    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    return-void

    .line 88
    :cond_5
    new-instance p0, Ljava/lang/Thread;

    new-instance p3, Lcom/hzbhd/bluetooth/neon/NeonKit$1;

    invoke-direct {p3, p1, p2, v1, p4}, Lcom/hzbhd/bluetooth/neon/NeonKit$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 103
    return-void

    .line 63
    :cond_6
    :goto_1
    return-void
.end method

.method public static openList(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hzbhd/bluetooth/neon/NeonListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    .line 195
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "neon_kit"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static push(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 3

    .line 49
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/bluetooth/neon/NeonKit;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 50
    new-instance v0, Lorg/json/JSONArray;

    const-string v1, "[]"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 52
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p2, v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v2, p3, :cond_0

    .line 54
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 59
    :goto_1
    return-void
.end method

.method static read(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 128
    const/16 v0, 0x1f40

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 129
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 130
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 131
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 134
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 135
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 138
    const-string p0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static setting(Landroid/content/Context;BBLjava/lang/String;)V
    .locals 2

    .line 153
    :try_start_0
    invoke-static {}, Lcom/hzbhd/bluetooth/neon/NeonKit;->svc()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v0

    .line 154
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    .line 155
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 156
    invoke-interface {v0, v1, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpSetPlayerSettingValue(Ljava/lang/String;BB)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_1
    goto :goto_1

    .line 158
    :catchall_0
    move-exception p1

    .line 160
    :goto_1
    const/4 p1, 0x0

    invoke-static {p0, p3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 161
    return-void
.end method

.method public static startSms(Landroid/content/Context;)V
    .locals 2

    .line 201
    sget-boolean v0, Lcom/hzbhd/bluetooth/neon/NeonKit;->smsStarted:Z

    if-eqz v0, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hzbhd/bluetooth/neon/NeonKit;->smsStarted:Z

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 206
    new-instance v0, Lcom/hzbhd/bluetooth/neon/NeonKit$3;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/neon/NeonKit$3;-><init>(Landroid/content/Context;)V

    .line 241
    sget-object p0, Lcom/hzbhd/bluetooth/neon/NeonKit;->UI:Landroid/os/Handler;

    new-instance v1, Lcom/hzbhd/bluetooth/neon/NeonKit$4;

    invoke-direct {v1, v0}, Lcom/hzbhd/bluetooth/neon/NeonKit$4;-><init>(Lnfore/android/bt/servicemanager/UiMapCallback$Stub;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void
.end method

.method static svc()Lnfore/android/bt/servicemanager/UiServiceCommand;
    .locals 3

    .line 38
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.hzbhd.midwareproxy.bluetooth.BluetoothServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    const-string v2, "mBlueToothService"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 40
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnfore/android/bt/servicemanager/UiServiceCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    return-object v0
.end method

.method public static toggleRepeat(Landroid/content/Context;)V
    .locals 4

    .line 147
    sget v0, Lcom/hzbhd/bluetooth/neon/NeonKit;->repeat:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    sget v0, Lcom/hzbhd/bluetooth/neon/NeonKit;->repeat:I

    if-ne v0, v2, :cond_1

    const/4 v3, 0x2

    :cond_1
    :goto_0
    sput v3, Lcom/hzbhd/bluetooth/neon/NeonKit;->repeat:I

    .line 148
    sget v0, Lcom/hzbhd/bluetooth/neon/NeonKit;->repeat:I

    int-to-byte v0, v0

    sget v3, Lcom/hzbhd/bluetooth/neon/NeonKit;->repeat:I

    if-ne v3, v2, :cond_2

    const-string v2, "Repetition : tout"

    goto :goto_1

    :cond_2
    sget v2, Lcom/hzbhd/bluetooth/neon/NeonKit;->repeat:I

    if-ne v2, v1, :cond_3

    const-string v2, "Repetition : titre"

    goto :goto_1

    :cond_3
    const-string v2, "Repetition : desactivee"

    :goto_1
    invoke-static {p0, v1, v0, v2}, Lcom/hzbhd/bluetooth/neon/NeonKit;->setting(Landroid/content/Context;BBLjava/lang/String;)V

    .line 149
    return-void
.end method

.method public static toggleShuffle(Landroid/content/Context;)V
    .locals 3

    .line 142
    sget v0, Lcom/hzbhd/bluetooth/neon/NeonKit;->shuffle:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x2

    :cond_0
    sput v2, Lcom/hzbhd/bluetooth/neon/NeonKit;->shuffle:I

    .line 143
    sget v0, Lcom/hzbhd/bluetooth/neon/NeonKit;->shuffle:I

    int-to-byte v0, v0

    sget v2, Lcom/hzbhd/bluetooth/neon/NeonKit;->shuffle:I

    if-ne v2, v1, :cond_1

    const-string v1, "Aleatoire : active"

    goto :goto_0

    :cond_1
    const-string v1, "Aleatoire : desactive"

    :goto_0
    const/4 v2, 0x3

    invoke-static {p0, v2, v0, v1}, Lcom/hzbhd/bluetooth/neon/NeonKit;->setting(Landroid/content/Context;BBLjava/lang/String;)V

    .line 144
    return-void
.end method
