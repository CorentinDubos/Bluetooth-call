.class Lcom/autochips/quickboot/QuickBootManager$1;
.super Ljava/lang/Object;
.source "QuickBootManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/quickboot/QuickBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/quickboot/QuickBootManager;


# direct methods
.method constructor <init>(Lcom/autochips/quickboot/QuickBootManager;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/autochips/quickboot/QuickBootManager$1;->this$0:Lcom/autochips/quickboot/QuickBootManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/autochips/quickboot/QuickBootManager$1;->this$0:Lcom/autochips/quickboot/QuickBootManager;

    invoke-static {p2}, Lcom/autochips/quickboot/IQuickBootService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autochips/quickboot/IQuickBootService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/quickboot/QuickBootManager;->access$002(Lcom/autochips/quickboot/QuickBootManager;Lcom/autochips/quickboot/IQuickBootService;)Lcom/autochips/quickboot/IQuickBootService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 35
    iget-object p1, p0, Lcom/autochips/quickboot/QuickBootManager$1;->this$0:Lcom/autochips/quickboot/QuickBootManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autochips/quickboot/QuickBootManager;->access$002(Lcom/autochips/quickboot/QuickBootManager;Lcom/autochips/quickboot/IQuickBootService;)Lcom/autochips/quickboot/IQuickBootService;

    return-void
.end method
