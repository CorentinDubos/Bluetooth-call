.class Lcom/hzbhd/config/jar/dualscreen/DualScreenService$5;
.super Landroid/database/ContentObserver;
.source "DualScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->addNaviPackageChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;


# direct methods
.method constructor <init>(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;Landroid/os/Handler;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$5;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 200
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$5;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-static {p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$800(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)V

    return-void
.end method
