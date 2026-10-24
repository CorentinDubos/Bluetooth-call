.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$7;
.super Ljava/lang/Object;
.source "MusicRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->reportIrc(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

.field final synthetic val$lrc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;Ljava/lang/String;)V
    .locals 0

    .line 1354
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$7;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$7;->val$lrc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1357
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$7;->val$lrc:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->musicLrcInfoChange(Ljava/lang/String;)V

    return-void
.end method
