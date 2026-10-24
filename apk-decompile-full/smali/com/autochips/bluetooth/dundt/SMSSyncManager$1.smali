.class Lcom/autochips/bluetooth/dundt/SMSSyncManager$1;
.super Ljava/lang/Object;
.source "SMSSyncManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/dundt/SMSSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/dundt/SMSSyncManager;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/dundt/SMSSyncManager;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager$1;->this$0:Lcom/autochips/bluetooth/dundt/SMSSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 172
    invoke-static {}, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SMSSyncManager"

    const-string v0, "Porxy object connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager$1;->this$0:Lcom/autochips/bluetooth/dundt/SMSSyncManager;

    invoke-static {p2}, Lcom/autochips/bluetooth/dundt/ISMSSyncManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autochips/bluetooth/dundt/ISMSSyncManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->access$102(Lcom/autochips/bluetooth/dundt/SMSSyncManager;Lcom/autochips/bluetooth/dundt/ISMSSyncManager;)Lcom/autochips/bluetooth/dundt/ISMSSyncManager;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 167
    invoke-static {}, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SMSSyncManager"

    const-string v0, "Porxy object disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SMSSyncManager$1;->this$0:Lcom/autochips/bluetooth/dundt/SMSSyncManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SMSSyncManager;->access$102(Lcom/autochips/bluetooth/dundt/SMSSyncManager;Lcom/autochips/bluetooth/dundt/ISMSSyncManager;)Lcom/autochips/bluetooth/dundt/ISMSSyncManager;

    return-void
.end method
