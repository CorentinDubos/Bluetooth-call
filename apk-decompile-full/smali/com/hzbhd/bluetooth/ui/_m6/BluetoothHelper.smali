.class public Lcom/hzbhd/bluetooth/ui/_m6/BluetoothHelper;
.super Ljava/lang/Object;
.source "BluetoothHelper.java"


# static fields
.field public static final BLUETOOTH_LIST:Ljava/lang/String; = "contactsList"

.field public static final BLUETOOTH_NAME:Ljava/lang/String; = "name"

.field public static final BLUETOOTH_NUMBER:Ljava/lang/String; = "number"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static queryContactPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 20
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 21
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "display_name"

    const-string v3, "data1"

    .line 22
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v4, 0x0

    .line 25
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 26
    invoke-interface {p0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 29
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 30
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 31
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, ""

    .line 36
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 39
    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v8, "name"

    .line 41
    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "number"

    .line 42
    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 45
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    const-string p0, "contactsList"

    .line 50
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 52
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 55
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 56
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_2
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method
