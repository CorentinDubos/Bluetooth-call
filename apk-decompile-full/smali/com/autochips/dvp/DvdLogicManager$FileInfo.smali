.class public Lcom/autochips/dvp/DvdLogicManager$FileInfo;
.super Ljava/lang/Object;
.source "DvdLogicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/dvp/DvdLogicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileInfo"
.end annotation


# instance fields
.field private absolutePath:Ljava/lang/String;

.field private fileItem:I

.field private fileName:Ljava/lang/String;

.field private fileType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2808
    iput p1, p0, Lcom/autochips/dvp/DvdLogicManager$FileInfo;->fileType:I

    .line 2809
    iput-object p2, p0, Lcom/autochips/dvp/DvdLogicManager$FileInfo;->absolutePath:Ljava/lang/String;

    .line 2810
    iput-object p3, p0, Lcom/autochips/dvp/DvdLogicManager$FileInfo;->fileName:Ljava/lang/String;

    .line 2811
    iput p4, p0, Lcom/autochips/dvp/DvdLogicManager$FileInfo;->fileItem:I

    return-void
.end method


# virtual methods
.method public getfilabsolutePath()Ljava/lang/String;
    .locals 1

    .line 2829
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager$FileInfo;->absolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getfileItem()I
    .locals 1

    .line 2846
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager$FileInfo;->fileItem:I

    return v0
.end method

.method public getfilename()Ljava/lang/String;
    .locals 1

    .line 2838
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager$FileInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public gettype()I
    .locals 1

    .line 2820
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager$FileInfo;->fileType:I

    return v0
.end method
