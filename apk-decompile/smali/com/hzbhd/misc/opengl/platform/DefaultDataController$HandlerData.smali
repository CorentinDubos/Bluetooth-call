.class Lcom/hzbhd/misc/opengl/platform/DefaultDataController$HandlerData;
.super Landroid/os/Handler;
.source "DefaultDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/misc/opengl/platform/DefaultDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandlerData"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/misc/opengl/platform/DefaultDataController;


# direct methods
.method public constructor <init>(Lcom/hzbhd/misc/opengl/platform/DefaultDataController;Landroid/os/Looper;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/hzbhd/misc/opengl/platform/DefaultDataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/platform/DefaultDataController;

    .line 109
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method
