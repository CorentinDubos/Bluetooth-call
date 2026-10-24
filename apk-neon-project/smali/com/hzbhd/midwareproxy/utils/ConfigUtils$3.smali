.class Lcom/hzbhd/midwareproxy/utils/ConfigUtils$3;
.super Landroid/os/Handler;
.source "ConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/utils/ConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/utils/ConfigUtils;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$3;->this$0:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$3;->this$0:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$3;->this$0:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/hzbhd/midware/proxy/R$string;->factory_config_export_fault:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$3;->this$0:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/hzbhd/midware/proxy/R$string;->factory_config_export_ing:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 170
    :cond_3
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$3;->this$0:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/hzbhd/midware/proxy/R$string;->factory_config_export_ok:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
