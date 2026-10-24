.class public Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;
.super Ljava/lang/Object;
.source "CustomDialpadEntity.java"


# instance fields
.field private drawableNormal:I

.field private drawableSelected:I

.field private key:Ljava/lang/String;

.field private size:[I


# direct methods
.method public constructor <init>(II[ILjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->drawableNormal:I

    .line 11
    iput p2, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->drawableSelected:I

    .line 12
    iput-object p3, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->size:[I

    .line 13
    iput-object p4, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDrawableNormal()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->drawableNormal:I

    return v0
.end method

.method public getDrawableSelected()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->drawableSelected:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()[I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->size:[I

    return-object v0
.end method

.method public setDrawableNormal(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->drawableNormal:I

    return-void
.end method

.method public setDrawableSelected(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->drawableSelected:I

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->key:Ljava/lang/String;

    return-void
.end method

.method public setSize([I)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->size:[I

    return-void
.end method
