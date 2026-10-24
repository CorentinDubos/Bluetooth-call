.class synthetic Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;
.super Ljava/lang/Object;
.source "CustomerIDConstantDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/CustomerIDConstantDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 259
    invoke-static {}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->values()[Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    return-void
.end method
