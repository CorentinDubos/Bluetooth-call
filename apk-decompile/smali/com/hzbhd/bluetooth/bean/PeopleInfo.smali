.class public Lcom/hzbhd/bluetooth/bean/PeopleInfo;
.super Ljava/lang/Object;
.source "PeopleInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FAVORITE_CONTACTS:I = 0x1

.field public static final FAVORITE_SOS:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private contactId:J

.field private favoriteType:I

.field private id:J

.field private isStarred:Z

.field private number:Ljava/lang/String;

.field private personName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/hzbhd/bluetooth/bean/PeopleInfo;->contactId:J

    return-wide v0
.end method

.method public getFavoriteType()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/hzbhd/bluetooth/bean/PeopleInfo;->favoriteType:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/hzbhd/bluetooth/bean/PeopleInfo;->id:J

    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/hzbhd/bluetooth/bean/PeopleInfo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/hzbhd/bluetooth/bean/PeopleInfo;->personName:Ljava/lang/String;

    return-object v0
.end method

.method public isStarred()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/bean/PeopleInfo;->isStarred:Z

    return v0
.end method

.method public setContactId(J)V
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/hzbhd/bluetooth/bean/PeopleInfo;->contactId:J

    return-void
.end method

.method public setFavoriteType(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/hzbhd/bluetooth/bean/PeopleInfo;->favoriteType:I

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/hzbhd/bluetooth/bean/PeopleInfo;->id:J

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/hzbhd/bluetooth/bean/PeopleInfo;->number:Ljava/lang/String;

    return-void
.end method

.method public setPersonName(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/hzbhd/bluetooth/bean/PeopleInfo;->personName:Ljava/lang/String;

    return-void
.end method

.method public setStarred(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/bean/PeopleInfo;->isStarred:Z

    return-void
.end method
