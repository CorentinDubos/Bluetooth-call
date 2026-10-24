.class public Lcom/autochips/settings/AtcSettings$Audio$SpeakerLayout;
.super Ljava/lang/Object;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeakerLayout"
.end annotation


# static fields
.field public static SPEAKER_LAYOUT_LR:I = 0x1

.field public static SPEAKER_LAYOUT_LRC:I = 0x8

.field public static SPEAKER_LAYOUT_LRCLSRS:I = 0x80

.field public static SPEAKER_LAYOUT_LRCS:I = 0x20

.field public static SPEAKER_LAYOUT_LRLSRS:I = 0x40

.field public static SPEAKER_LAYOUT_LRS:I = 0x10

.field public static SPEAKER_LAYOUT_MAX:I = 0xff

.field public static SPEAKER_LAYOUT_MIN:I = 0x0

.field public static SPEAKER_LAYOUT_MONO:I = 0x2

.field public static SPEAKER_LAYOUT_STEREO:I = 0x4

.field public static SPEAKER_LAYOUT_SUBWOOFER:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
