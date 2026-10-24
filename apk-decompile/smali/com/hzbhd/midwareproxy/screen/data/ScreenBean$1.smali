.class Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$1;
.super Ljava/lang/Object;
.source "ScreenBean.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->setBootDisplayOrientation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$1;->this$0:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$1;->this$0:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->isMidwareService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$1;->this$0:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    iget-object v0, v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultPlayform:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->setBootDisplayOrientation()V

    :cond_0
    return-void
.end method
