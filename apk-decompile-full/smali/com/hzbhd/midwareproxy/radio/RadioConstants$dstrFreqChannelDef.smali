.class public Lcom/hzbhd/midwareproxy/radio/RadioConstants$dstrFreqChannelDef;
.super Ljava/lang/Object;
.source "RadioConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/radio/RadioConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dstrFreqChannelDef"
.end annotation


# instance fields
.field public channel:Ljava/lang/String;

.field public freq:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioConstants$dstrFreqChannelDef;->freq:I

    .line 63
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/radio/RadioConstants$dstrFreqChannelDef;->channel:Ljava/lang/String;

    return-void
.end method
