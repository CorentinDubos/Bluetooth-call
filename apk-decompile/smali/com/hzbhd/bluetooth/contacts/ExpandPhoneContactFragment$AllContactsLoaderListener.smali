.class Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;
.super Ljava/lang/Object;
.source "ExpandPhoneContactFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllContactsLoaderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;


# direct methods
.method private constructor <init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AllContactsLoaderListener#onCreateLoader"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------onCreateLoader() id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 138
    :try_start_0
    new-instance p1, Landroid/support/v4/content/CursorLoader;

    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    :try_start_1
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    move-result-object p2

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {v2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$200(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->configureContactsLoader(Landroid/support/v4/content/CursorLoader;JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :cond_0
    :try_start_2
    const-string p1, "nameGroup"

    .line 142
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    new-instance p2, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 144
    :try_start_3
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->configureNumberLoader(Landroid/support/v4/content/CursorLoader;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object p1, p2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, p2

    move-object p2, p1

    goto :goto_0

    :catch_2
    move-exception p2

    .line 147
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const-string v0, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    const v1, 0x7f0a0013

    const v2, 0x7f040014

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez p2, :cond_1

    .line 156
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$400(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/ExpandableListView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$500(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 158
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 159
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$600(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SearchView;->clearFocus()V

    :cond_0
    return-void

    .line 164
    :cond_1
    :try_start_0
    new-instance v5, Lcom/hzbhd/bluetooth/utils/SortCursor;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {v7}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p2, v6, v7}, Lcom/hzbhd/bluetooth/utils/SortCursor;-><init>(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllContactsLoaderListener#onLoadFinished="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/hzbhd/bluetooth/utils/SortCursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result p1

    .line 167
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLoadFinished() for loader_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_2

    .line 170
    invoke-virtual {v5}, Lcom/hzbhd/bluetooth/utils/SortCursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_6

    .line 171
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data.getCount() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/hzbhd/bluetooth/utils/SortCursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :try_start_1
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadFinished() for groupPos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    move-result-object p2

    invoke-virtual {p2, p1, v5}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "DEBUG"

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adapter expired, try again on the next query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 184
    :cond_2
    invoke-virtual {v5}, Lcom/hzbhd/bluetooth/utils/SortCursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setSections([Ljava/lang/String;)V

    .line 189
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setmPositions([I)V

    goto :goto_0

    .line 191
    :cond_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setSections([Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setmPositions([I)V

    .line 194
    :goto_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    .line 196
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadFinished() setGroupCursor = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/hzbhd/bluetooth/utils/SortCursor;->getCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v5}, Lcom/hzbhd/bluetooth/utils/SortCursor;->getCount()I

    move-result p1

    if-nez p1, :cond_4

    .line 199
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$400(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/ExpandableListView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$500(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    if-ne p1, p2, :cond_6

    .line 202
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$600(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_1

    .line 205
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$500(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$400(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/ExpandableListView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 208
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$700(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    .line 209
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    if-ne p1, p2, :cond_6

    .line 210
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$800(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 211
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$800(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/hzbhd/bluetooth/utils/SortCursor;->getCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_5
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$600(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SearchView;->clearFocus()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result p1

    .line 225
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoaderReset() for loader_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adapter expired, try again on the next query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    .line 231
    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    :cond_1
    :goto_0
    return-void
.end method
