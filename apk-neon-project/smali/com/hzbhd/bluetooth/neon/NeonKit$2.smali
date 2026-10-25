.class Lcom/hzbhd/bluetooth/neon/NeonKit$2;
.super Lnfore/android/bt/servicemanager/UiMapCallback$Stub;
.source "NeonKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/neon/NeonKit;->startSms(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$2;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Lnfore/android/bt/servicemanager/UiMapCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapDownloadNotify(Ljava/lang/String;II)V
    .locals 0

    .line 180
    return-void
.end method

.method public onMapNewMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 184
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 185
    const-string p2, "a"

    if-nez p3, :cond_0

    const-string v0, "?"

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string p2, "b"

    if-nez p4, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    move-object v0, p4

    :goto_1
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string p2, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 188
    iget-object p2, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$2;->val$ctx:Landroid/content/Context;

    const-string v0, "sms"

    const/16 v1, 0x64

    invoke-static {p2, v0, p1, v1}, Lcom/hzbhd/bluetooth/neon/NeonKit;->push(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    goto :goto_2

    .line 189
    :catchall_0
    move-exception p1

    .line 191
    :goto_2
    invoke-static {}, Lcom/hzbhd/bluetooth/neon/NeonKit;->access$200()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/hzbhd/bluetooth/neon/NeonKit$2$1;

    invoke-direct {p2, p0, p3, p4}, Lcom/hzbhd/bluetooth/neon/NeonKit$2$1;-><init>(Lcom/hzbhd/bluetooth/neon/NeonKit$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    return-void
.end method

.method public onMapNotificationStateChanged(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 199
    return-void
.end method

.method public onMapStateChanged(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0

    .line 202
    return-void
.end method

.method public retMapCleanDatabaseCompleted(Z)V
    .locals 0

    .line 205
    return-void
.end method

.method public retMapDatabaseAvailable(Ljava/lang/String;)V
    .locals 0

    .line 208
    return-void
.end method

.method public retMapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V
    .locals 0

    .line 211
    return-void
.end method
