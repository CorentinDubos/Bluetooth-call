.class Lcom/autochips/dvp/DvdLogicManager$1;
.super Ljava/lang/Object;
.source "DvdLogicManager.java"

# interfaces
.implements Landroid/cbm/CBManager$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/dvp/DvdLogicManager;->request()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/dvp/DvdLogicManager;


# direct methods
.method constructor <init>(Lcom/autochips/dvp/DvdLogicManager;)V
    .locals 0

    .line 1845
    iput-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$1;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(III)I
    .locals 4

    .line 1848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dvp][framework] CBM command"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "param1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "param2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DvdLogicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v2, 0x0

    const/16 v3, 0xf

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 1853
    :cond_0
    iget-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$1;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->access$100(Lcom/autochips/dvp/DvdLogicManager;)V

    .line 1854
    iget-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$1;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->access$200(Lcom/autochips/dvp/DvdLogicManager;)Lcom/autochips/dvp/DvdLogicManager$OnCBMListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1855
    iget-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$1;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->access$200(Lcom/autochips/dvp/DvdLogicManager;)Lcom/autochips/dvp/DvdLogicManager$OnCBMListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2, p3}, Lcom/autochips/dvp/DvdLogicManager$OnCBMListener;->onAction(III)V

    :cond_1
    if-ne p3, v3, :cond_4

    const-string p1, "[dvp][framework] RDS Start"

    .line 1859
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    iget-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$1;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->access$300(Lcom/autochips/dvp/DvdLogicManager;)Landroid/os/Handler;

    move-result-object p2

    const/16 p3, 0x12c

    invoke-static {p1, p2, p3}, Lcom/autochips/dvp/DvdLogicManager;->access$400(Lcom/autochips/dvp/DvdLogicManager;Landroid/os/Handler;I)V

    .line 1861
    iget-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$1;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->access$500(Lcom/autochips/dvp/DvdLogicManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/autochips/dvp/DvdLogicManager;->access$400(Lcom/autochips/dvp/DvdLogicManager;Landroid/os/Handler;I)V

    .line 1862
    iget-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$1;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-static {p1, v3}, Lcom/autochips/dvp/DvdLogicManager;->access$602(Lcom/autochips/dvp/DvdLogicManager;I)I

    goto :goto_0

    .line 1868
    :cond_2
    iget-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$1;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->access$700(Lcom/autochips/dvp/DvdLogicManager;)V

    .line 1869
    iget-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$1;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->access$200(Lcom/autochips/dvp/DvdLogicManager;)Lcom/autochips/dvp/DvdLogicManager$OnCBMListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1870
    iget-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$1;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->access$200(Lcom/autochips/dvp/DvdLogicManager;)Lcom/autochips/dvp/DvdLogicManager$OnCBMListener;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0, p2, p3}, Lcom/autochips/dvp/DvdLogicManager$OnCBMListener;->onAction(III)V

    .line 1874
    :cond_3
    iget-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$1;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->access$600(Lcom/autochips/dvp/DvdLogicManager;)I

    move-result p1

    if-ne p1, v3, :cond_4

    const-string p1, "[dvp][framework] RDS Stop"

    .line 1875
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    iget-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$1;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->access$300(Lcom/autochips/dvp/DvdLogicManager;)Landroid/os/Handler;

    move-result-object p2

    const/16 p3, 0x12d

    invoke-static {p1, p2, p3}, Lcom/autochips/dvp/DvdLogicManager;->access$400(Lcom/autochips/dvp/DvdLogicManager;Landroid/os/Handler;I)V

    .line 1877
    iget-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$1;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->access$500(Lcom/autochips/dvp/DvdLogicManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/autochips/dvp/DvdLogicManager;->access$400(Lcom/autochips/dvp/DvdLogicManager;Landroid/os/Handler;I)V

    .line 1878
    iget-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$1;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-static {p1, v2}, Lcom/autochips/dvp/DvdLogicManager;->access$602(Lcom/autochips/dvp/DvdLogicManager;I)I

    :cond_4
    :goto_0
    return v2
.end method
