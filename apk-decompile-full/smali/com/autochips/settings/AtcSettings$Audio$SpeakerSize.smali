.class public Lcom/autochips/settings/AtcSettings$Audio$SpeakerSize;
.super Ljava/lang/Object;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeakerSize"
.end annotation


# static fields
.field public static SPEAKER_LAYOUT_C_LARGE:I = 0x1

.field public static SPEAKER_LAYOUT_LS_LARGE:I = 0x8

.field public static SPEAKER_LAYOUT_L_LARGE:I = 0x2

.field public static SPEAKER_LAYOUT_RS_LARGE:I = 0x10

.field public static SPEAKER_LAYOUT_R_LARGE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
