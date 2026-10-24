.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$5;
.super Ljava/lang/Object;
.source "BTMusicRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->reportA2dpId3Info(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

.field final synthetic val$album:Ljava/lang/String;

.field final synthetic val$artist:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$5;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$5;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$5;->val$artist:Ljava/lang/String;

    iput-object p4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$5;->val$album:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$5;->val$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$5;->val$artist:Ljava/lang/String;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$5;->val$album:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->btMusicId3InfoChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
