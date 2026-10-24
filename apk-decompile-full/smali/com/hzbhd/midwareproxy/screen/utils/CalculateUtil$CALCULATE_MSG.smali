.class public interface abstract Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;
.super Ljava/lang/Object;
.source "CalculateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CALCULATE_MSG"
.end annotation


# direct methods
.method public static createMsg(Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;)V
    .locals 1

    .line 109
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static value(I)Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;
    .locals 1

    .line 105
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;

    return-object p0
.end method


# virtual methods
.method public abstract ordinal()I
.end method
