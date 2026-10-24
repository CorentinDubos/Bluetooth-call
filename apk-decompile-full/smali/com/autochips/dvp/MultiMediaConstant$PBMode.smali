.class public Lcom/autochips/dvp/MultiMediaConstant$PBMode;
.super Ljava/lang/Object;
.source "MultiMediaConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/dvp/MultiMediaConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBMode"
.end annotation


# static fields
.field public static final DVP_PBMODE_RANDOM:I = 0x2

.field public static final DVP_PBMODE_REPEAT:I = 0x0

.field public static final DVP_PBMODE_SHUFFLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
