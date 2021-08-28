.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;
.super Landroid/content/ContentProvider;
.source "UserConsentProvider.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final USER_CONSENT_LIST:I = 0x1


# instance fields
.field private mPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistence;

.field private mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->LOG_TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 46
    const-string v1, "com.sec.internal.userconsentprovider"

    const-string v2, "#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->mPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistence;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, "slot":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->mPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistence;

    invoke-virtual {v1, p2, p3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistence;->removeEuc(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 151
    .local v1, "numberOfDeletedRows":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->notifyListener(I)V

    .line 152
    .end local v0    # "slot":I
    nop

    .line 155
    return v1

    .line 153
    .end local v1    # "numberOfDeletedRows":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .line 51
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->getInstance()Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    .line 52
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider$1;-><init>(Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->setListener(Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;)V

    .line 63
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistence;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistence;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->mPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistence;

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 73
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query(Uri, String[], String, String[], String) uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 79
    .local v2, "slot":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v4

    .line 80
    .local v4, "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v5, 0x0

    .line 81
    .local v5, "imsi":Ljava/lang/String;
    const/4 v6, 0x0

    .line 83
    .local v6, "isSimAvailable":Z
    if-eqz v4, :cond_0

    .line 84
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v6

    .line 88
    :cond_0
    sget-object v7, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "query: slot="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", imsi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", isSimAvailable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    if-nez v6, :cond_1

    move-object/from16 v3, p0

    move-object/from16 v10, p3

    goto/16 :goto_4

    .line 95
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v7, "types":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    array-length v8, v1

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_8

    aget-object v11, v1, v10

    .line 97
    .local v11, "type":Ljava/lang/String;
    const/4 v12, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v9, 0x2

    sparse-switch v13, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v13, "PERSISTENT"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v12, 0x0

    goto :goto_1

    :sswitch_1
    const-string v13, "EULA"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v12, v14

    goto :goto_1

    :sswitch_2
    const-string v13, "VOLATILE"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v12, v3

    goto :goto_1

    :sswitch_3
    const-string v13, "NOTIFICATION"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v12, v9

    goto :goto_1

    :sswitch_4
    const-string v13, "ACKNOWLEDGEMENT"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v12, v15

    :goto_1
    if-eqz v12, :cond_7

    if-eq v12, v3, :cond_6

    if-eq v12, v9, :cond_5

    if-eq v12, v15, :cond_4

    if-eq v12, v14, :cond_3

    goto :goto_2

    .line 115
    :cond_3
    sget-object v9, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->EULA:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    goto :goto_2

    .line 111
    :cond_4
    sget-object v9, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->ACKNOWLEDGEMENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_2

    .line 107
    :cond_5
    sget-object v9, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->NOTIFICATION:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_2

    .line 103
    :cond_6
    sget-object v9, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_2

    .line 99
    :cond_7
    sget-object v9, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    nop

    .line 96
    .end local v11    # "type":Ljava/lang/String;
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 123
    :cond_8
    move-object/from16 v3, p0

    iget-object v8, v3, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->mPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistence;

    if-eqz p5, :cond_9

    move-object/from16 v9, p5

    goto :goto_3

    .line 124
    :cond_9
    const-string v9, "TIMESTAMP DESC"

    .line 123
    :goto_3
    move-object/from16 v10, p3

    invoke-virtual {v8, v10, v7, v9, v5}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistence;->getEucList(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 125
    .end local v4    # "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v5    # "imsi":Ljava/lang/String;
    .end local v6    # "isSimAvailable":Z
    .end local v7    # "types":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    .local v2, "cursor":Landroid/database/Cursor;
    nop

    .line 130
    return-object v2

    .line 91
    .local v2, "slot":I
    .restart local v4    # "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .restart local v5    # "imsi":Ljava/lang/String;
    .restart local v6    # "isSimAvailable":Z
    :cond_a
    move-object/from16 v3, p0

    move-object/from16 v10, p3

    .line 92
    :goto_4
    const/4 v7, 0x0

    return-object v7

    .line 126
    .end local v2    # "slot":I
    .end local v4    # "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v5    # "imsi":Ljava/lang/String;
    .end local v6    # "isSimAvailable":Z
    :cond_b
    move-object/from16 v3, p0

    move-object/from16 v10, p3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x53f01a26 -> :sswitch_4
        -0x52668f15 -> :sswitch_3
        -0x41e31264 -> :sswitch_2
        0x20a625 -> :sswitch_1
        0x3b757a97 -> :sswitch_0
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
