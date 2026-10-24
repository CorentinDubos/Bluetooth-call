.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$AmplifierBean;
.super Ljava/lang/Object;
.source "AmplifierRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AmplifierBean"
.end annotation


# instance fields
.field public max:I

.field public min:I

.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;II)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$AmplifierBean;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 144
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$AmplifierBean;->min:I

    const/16 p1, 0x64

    .line 145
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$AmplifierBean;->max:I

    .line 140
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$AmplifierBean;->min:I

    .line 141
    iput p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$AmplifierBean;->max:I

    return-void
.end method
