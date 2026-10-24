.class Lcom/autochips/bluetooth/BtSPPAdapter$2;
.super Ljava/lang/Object;
.source "BtSPPAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/BtSPPAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/BtSPPAdapter;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/BtSPPAdapter;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/autochips/bluetooth/BtSPPAdapter$2;->this$0:Lcom/autochips/bluetooth/BtSPPAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/autochips/bluetooth/BtSPPAdapter$2;->this$0:Lcom/autochips/bluetooth/BtSPPAdapter;

    check-cast p2, Lcom/autochips/bluetooth/spp/SppService$LocalBinder;

    check-cast p2, Lcom/autochips/bluetooth/spp/SppService$LocalBinder;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/spp/SppService$LocalBinder;->getSppService()Lcom/autochips/bluetooth/spp/SppService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/BtSPPAdapter;->access$302(Lcom/autochips/bluetooth/BtSPPAdapter;Lcom/autochips/bluetooth/spp/SppService;)Lcom/autochips/bluetooth/spp/SppService;

    .line 153
    iget-object p1, p0, Lcom/autochips/bluetooth/BtSPPAdapter$2;->this$0:Lcom/autochips/bluetooth/BtSPPAdapter;

    invoke-static {p1}, Lcom/autochips/bluetooth/BtSPPAdapter;->access$300(Lcom/autochips/bluetooth/BtSPPAdapter;)Lcom/autochips/bluetooth/spp/SppService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/autochips/bluetooth/BtSPPAdapter$2;->this$0:Lcom/autochips/bluetooth/BtSPPAdapter;

    invoke-static {p1}, Lcom/autochips/bluetooth/BtSPPAdapter;->access$300(Lcom/autochips/bluetooth/BtSPPAdapter;)Lcom/autochips/bluetooth/spp/SppService;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/BtSPPAdapter$2;->this$0:Lcom/autochips/bluetooth/BtSPPAdapter;

    invoke-static {p2}, Lcom/autochips/bluetooth/BtSPPAdapter;->access$400(Lcom/autochips/bluetooth/BtSPPAdapter;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/spp/SppService;->setHandler(Landroid/os/Handler;)V

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServiceConnected: sppService is null? "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/autochips/bluetooth/BtSPPAdapter$2;->this$0:Lcom/autochips/bluetooth/BtSPPAdapter;

    invoke-static {p2}, Lcom/autochips/bluetooth/BtSPPAdapter;->access$300(Lcom/autochips/bluetooth/BtSPPAdapter;)Lcom/autochips/bluetooth/spp/SppService;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "yes"

    goto :goto_0

    :cond_1
    const-string p1, "no"

    :goto_0
    const-string p2, "BtSPPAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/autochips/bluetooth/BtSPPAdapter$2;->this$0:Lcom/autochips/bluetooth/BtSPPAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/BtSPPAdapter;->access$302(Lcom/autochips/bluetooth/BtSPPAdapter;Lcom/autochips/bluetooth/spp/SppService;)Lcom/autochips/bluetooth/spp/SppService;

    return-void
.end method
