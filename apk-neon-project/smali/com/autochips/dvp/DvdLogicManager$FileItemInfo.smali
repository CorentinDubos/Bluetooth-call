.class Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;
.super Ljava/lang/Object;
.source "DvdLogicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/dvp/DvdLogicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileItemInfo"
.end annotation


# instance fields
.field public filename:Ljava/lang/String;

.field public iFileType:I

.field final synthetic this$0:Lcom/autochips/dvp/DvdLogicManager;


# direct methods
.method public constructor <init>(Lcom/autochips/dvp/DvdLogicManager;ILjava/lang/String;)V
    .locals 0

    .line 2352
    iput-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2353
    iput p2, p0, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    .line 2354
    iput-object p3, p0, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->filename:Ljava/lang/String;

    return-void
.end method
