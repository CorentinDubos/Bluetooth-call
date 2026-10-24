.class Lcom/hzbhd/midwareproxy/screen/views/TextView$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$IFreshUICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/screen/views/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/screen/views/TextView;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/screen/views/TextView;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/views/TextView$1;->this$0:Lcom/hzbhd/midwareproxy/screen/views/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(I)V
    .locals 1

    const-string p1, "mww"

    const-string v0, "TextView callback onConfigurationChanged"

    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/screen/views/TextView$1;->this$0:Lcom/hzbhd/midwareproxy/screen/views/TextView;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/screen/views/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/screen/views/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
