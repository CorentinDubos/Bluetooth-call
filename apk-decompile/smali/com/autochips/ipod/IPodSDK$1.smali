.class Lcom/autochips/ipod/IPodSDK$1;
.super Ljava/lang/Object;
.source "IPodSDK.java"

# interfaces
.implements Landroid/cbm/CBManager$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/ipod/IPodSDK;


# direct methods
.method constructor <init>(Lcom/autochips/ipod/IPodSDK;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/autochips/ipod/IPodSDK$1;->this$0:Lcom/autochips/ipod/IPodSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(III)I
    .locals 0

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/autochips/ipod/IPodSDK$1;->this$0:Lcom/autochips/ipod/IPodSDK;

    invoke-virtual {p1}, Lcom/autochips/ipod/IPodSDK;->startPlayAudio()Z

    .line 196
    :try_start_0
    iget-object p1, p0, Lcom/autochips/ipod/IPodSDK$1;->this$0:Lcom/autochips/ipod/IPodSDK;

    invoke-virtual {p1}, Lcom/autochips/ipod/IPodSDK;->getPlayStatus_Ex()Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_EX_T;

    move-result-object p1

    .line 197
    iget-object p1, p1, Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_EX_T;->ePbStatus:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    sget-object p2, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_PAUSE_0X02:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    if-ne p1, p2, :cond_3

    .line 199
    iget-object p1, p0, Lcom/autochips/ipod/IPodSDK$1;->this$0:Lcom/autochips/ipod/IPodSDK;

    invoke-virtual {p1, p3}, Lcom/autochips/ipod/IPodSDK;->playControl(B)V
    :try_end_0
    .catch Lcom/autochips/ipod/IPodSDK$IPodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 208
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/autochips/ipod/IPodSDK$1;->this$0:Lcom/autochips/ipod/IPodSDK;

    invoke-virtual {p1}, Lcom/autochips/ipod/IPodSDK;->getPlayStatus_Ex()Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_EX_T;

    move-result-object p1

    .line 209
    iget-object p1, p1, Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_EX_T;->ePbStatus:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    sget-object p2, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_PLAY_0X01:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    if-ne p1, p2, :cond_2

    .line 211
    iget-object p1, p0, Lcom/autochips/ipod/IPodSDK$1;->this$0:Lcom/autochips/ipod/IPodSDK;

    invoke-virtual {p1, p3}, Lcom/autochips/ipod/IPodSDK;->playControl(B)V
    :try_end_1
    .catch Lcom/autochips/ipod/IPodSDK$IPodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    :catch_0
    :cond_2
    iget-object p1, p0, Lcom/autochips/ipod/IPodSDK$1;->this$0:Lcom/autochips/ipod/IPodSDK;

    invoke-virtual {p1}, Lcom/autochips/ipod/IPodSDK;->stopPlayAudio()Z

    :catch_1
    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
