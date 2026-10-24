.class public Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneQuery;
.super Ljava/lang/Object;
.source "ContactsTreeCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneQuery"
.end annotation


# static fields
.field public static final PHONE_CONTACT_ID:I = 0x4

.field public static final PHONE_DISPLAY_NAME:I = 0x7

.field public static final PHONE_DISPLAY_NAME_ALTERNATIVE:I = 0x9

.field public static final PHONE_ID:I = 0x0

.field public static final PHONE_LABEL:I = 0x2

.field public static final PHONE_LOOKUP_KEY:I = 0x5

.field public static final PHONE_NUMBER:I = 0x3

.field public static final PHONE_PHOTO_ID:I = 0x6

.field public static final PHONE_STARRED:I = 0x8

.field public static final PHONE_TYPE:I = 0x1

.field public static final PROJECTION_PRIMARY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "_id"

    const-string v1, "data2"

    const-string v2, "data3"

    const-string v3, "data1"

    const-string v4, "contact_id"

    const-string v5, "lookup"

    const-string v6, "photo_id"

    const-string v7, "display_name"

    const-string/jumbo v8, "starred"

    const-string v9, "display_name_alt"

    .line 523
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
