.class Lcom/autochips/dvp/DvdLogicManager$DVP_CMD;
.super Ljava/lang/Object;
.source "DvdLogicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/dvp/DvdLogicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DVP_CMD"
.end annotation


# instance fields
.field arg1:I

.field arg2:I

.field cmd:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 2373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2374
    iput p1, p0, Lcom/autochips/dvp/DvdLogicManager$DVP_CMD;->cmd:I

    .line 2375
    iput p2, p0, Lcom/autochips/dvp/DvdLogicManager$DVP_CMD;->arg1:I

    .line 2376
    iput p3, p0, Lcom/autochips/dvp/DvdLogicManager$DVP_CMD;->arg2:I

    return-void
.end method
