.class Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$ROMFileUpdateStruct;
.super Ljava/lang/Object;
.source "MpegplayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ROMFileUpdateStruct"
.end annotation


# instance fields
.field public mFileIndex:I

.field public mFileType:I

.field public mFolderIndex:I

.field final synthetic this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;III)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$ROMFileUpdateStruct;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput p2, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$ROMFileUpdateStruct;->mFileType:I

    .line 187
    iput p3, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$ROMFileUpdateStruct;->mFolderIndex:I

    .line 188
    iput p4, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$ROMFileUpdateStruct;->mFileIndex:I

    return-void
.end method
