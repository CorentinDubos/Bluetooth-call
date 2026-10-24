.class Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager$1;
.super Ljava/lang/Object;
.source "BodaSystemManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager$1;->this$0:Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 78
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->access$002(Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;)Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServiceConnected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->access$000()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BodaSystemManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager$1;->this$0:Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->access$100(Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;)Lcom/hzbhd/midwareproxy/speechrecognition/interfaces/OnBindListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->access$000()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager$1;->this$0:Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->access$100(Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;)Lcom/hzbhd/midwareproxy/speechrecognition/interfaces/OnBindListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/speechrecognition/interfaces/OnBindListener;->success()V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager$1;->this$0:Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;->access$100(Lcom/hzbhd/midwareproxy/speechrecognition/BodaSystemManager;)Lcom/hzbhd/midwareproxy/speechrecognition/interfaces/OnBindListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/speechrecognition/interfaces/OnBindListener;->error()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
