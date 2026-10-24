.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;
.super Ljava/lang/Object;
.source "AmplifierRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Bean"
.end annotation


# instance fields
.field public ID:Ljava/lang/String;

.field public bass:I

.field public middle:I

.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;

.field public treble:I


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;->ID:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;->treble:I

    .line 31
    iput p4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;->middle:I

    .line 32
    iput p5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;->bass:I

    return-void
.end method
