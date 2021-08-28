.class public Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;
.super Ljava/lang/Object;
.source "ImsProfileLoaderInternal.java"


# static fields
.field public static final SETTING_DB_CREATED:Ljava/lang/String; = "setting_db_created"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImsProfileFromRow(Landroid/content/Context;Landroid/database/Cursor;I)Lcom/sec/ims/settings/ImsProfile;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "phoneId"    # I

    .line 99
    new-instance v0, Lcom/sec/ims/settings/ImsProfile;

    const-string/jumbo v1, "profile"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-static {p0}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    move-result-object v1

    .line 101
    .local v1, "simMobilityProfileUpdator":Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;
    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->applySimMobilityProfileUpdate(Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 103
    return-object v0
.end method

.method public static getProfile(Landroid/content/Context;II)Lcom/sec/ims/settings/ImsProfile;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "phoneId"    # I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sec.ims.settings/profile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 87
    .local v0, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 88
    .local v7, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 89
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 90
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-static {p0, v1, p2}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getImsProfileFromRow(Landroid/content/Context;Landroid/database/Cursor;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v2

    goto :goto_1

    .line 88
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2

    .line 94
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 95
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-object v7
.end method

.method public static getProfileList(Landroid/content/Context;I)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    sget-object v1, Lcom/sec/internal/constants/Mno;->MOCK_MNONAME_PROPERTY:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "mnoName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    .line 48
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    return-object v0

    .line 52
    :cond_1
    invoke-static {p0, v1, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mnoName"    # Ljava/lang/String;
    .param p2, "simSlot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/settings/ImsProfile;>;"
    const-string v1, "content://com.sec.ims.settings/profile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 63
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mnoname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 64
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 65
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 67
    :cond_0
    invoke-static {p0, v2, p2}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getImsProfileFromRow(Landroid/content/Context;Landroid/database/Cursor;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 68
    .local v3, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v3, :cond_1

    .line 69
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v3    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_1

    .line 63
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v3

    .line 74
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 76
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_4
    return-object v0
.end method

.method public static getRcsProfile(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mnoName"    # Ljava/lang/String;
    .param p2, "simSlot"    # I

    .line 107
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 110
    .local v2, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfile()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "rcsProfile":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 112
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
    return-object v3

    .line 115
    .end local v2    # "p":Lcom/sec/ims/settings/ImsProfile;
    .end local v3    # "rcsProfile":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
    const-string v1, ""

    return-object v1
.end method
