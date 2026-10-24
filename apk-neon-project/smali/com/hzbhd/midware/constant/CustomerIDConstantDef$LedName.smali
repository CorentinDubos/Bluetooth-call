.class public Lcom/hzbhd/midware/constant/CustomerIDConstantDef$LedName;
.super Ljava/lang/Object;
.source "CustomerIDConstantDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/CustomerIDConstantDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LedName"
.end annotation


# instance fields
.field public mDefault:Ljava/lang/String;

.field public mOption:Ljava/lang/String;

.field final synthetic this$0:Lcom/hzbhd/midware/constant/CustomerIDConstantDef;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midware/constant/CustomerIDConstantDef;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$LedName;->this$0:Lcom/hzbhd/midware/constant/CustomerIDConstantDef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "Default"

    .line 45
    iput-object p1, p0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$LedName;->mDefault:Ljava/lang/String;

    const-string p1, "Option"

    .line 46
    iput-object p1, p0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$LedName;->mOption:Ljava/lang/String;

    return-void
.end method
