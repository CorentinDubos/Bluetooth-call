.class public Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;
.super Ljava/lang/Object;
.source "PbSyncATParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/util/PbSyncATParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBMGRSPTCHARSET_T"
.end annotation


# instance fields
.field public iCharSet:I

.field public iSptCnt:I

.field public mapCharSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->mapCharSet:Ljava/util/Map;

    return-void
.end method
