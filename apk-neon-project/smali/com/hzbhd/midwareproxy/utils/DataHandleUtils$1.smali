.class Lcom/hzbhd/midwareproxy/utils/DataHandleUtils$1;
.super Ljava/lang/Object;
.source "DataHandleUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->sendKeyValue(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$key:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 641
    iput p1, p0, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils$1;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 644
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iget v1, p0, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils$1;->val$key:I

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    return-void
.end method
