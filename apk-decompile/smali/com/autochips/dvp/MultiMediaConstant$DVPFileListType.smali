.class public Lcom/autochips/dvp/MultiMediaConstant$DVPFileListType;
.super Ljava/lang/Object;
.source "MultiMediaConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/dvp/MultiMediaConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DVPFileListType"
.end annotation


# static fields
.field public static final FLPARM_LIST_DISC:I = 0x1

.field public static final FLPARM_LIST_FJPIC:I = 0x3

.field public static final FLPARM_LIST_FOLDER:I = 0x0

.field public static final FLPARM_LIST_INVALID:I = 0xff

.field public static final FLPARM_LIST_PLAYLIST:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
