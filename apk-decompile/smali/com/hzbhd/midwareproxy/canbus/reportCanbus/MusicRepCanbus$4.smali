.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$4;
.super Ljava/lang/Object;
.source "MusicRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->reportDestroyCanbusInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;)V
    .locals 0

    .line 1256
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$4;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1259
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->musicDestroy()V

    return-void
.end method
