.class public final Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;
.super Ljava/lang/Object;
.source "BlockContactPersisit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final BLOCKED_CONTACT_TABLE:Ljava/lang/String; = "blockedContacts"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SELECTION_BLOCKED:Ljava/lang/String; = "select * from blockedContacts where phone_number=?"

.field public static mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mDatabaseHelper:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;

    .line 66
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/database/SQLException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->LOG_TAG:Ljava/lang/String;

    const-string v2, "got exception when getting writableDatabase"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 71
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_0
    return-void
.end method

.method public static changeContactInfo(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    .line 143
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    .line 144
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 145
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 146
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 147
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->insertBlockContactInfo(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;Z)J

    goto :goto_1

    .line 149
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->updateBlockContactInfo(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 144
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 152
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 153
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;

    .line 59
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 55
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private notifyChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 98
    const-string v0, "content://com.gsma.services.rcs.provider.blockedcontact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 100
    .local v0, "CONTENT_URI":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 101
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 102
    return-void
.end method


# virtual methods
.method public insertBlockContactInfo(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;Z)J
    .locals 6
    .param p1, "info"    # Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    .param p2, "isNotify"    # Z

    .line 74
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->LOG_TAG:Ljava/lang/String;

    const-string v1, "insertBlockContactInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "phone_number"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getBlockingState()Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_blocked"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getBlockingTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "key_blocking_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    const-wide/16 v1, -0x1

    .line 85
    .local v1, "id":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "blockedContacts"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v3

    .line 89
    goto :goto_0

    .line 86
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Landroid/database/SQLException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->LOG_TAG:Ljava/lang/String;

    const-string v5, "got exception when inserting block contact info"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v3}, Landroid/database/SQLException;->printStackTrace()V

    .line 91
    .end local v3    # "e":Landroid/database/SQLException;
    :goto_0
    if-eqz p2, :cond_1

    .line 92
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->notifyChanged(Ljava/lang/String;)V

    .line 94
    :cond_1
    return-wide v1

    .line 76
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "id":J
    :cond_2
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ContactInfo phone num is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "select * from blockedContacts where phone_number=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 113
    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Landroid/database/SQLException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->LOG_TAG:Ljava/lang/String;

    const-string v3, "got exception when querying block contact info"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    .line 114
    .end local v1    # "e":Landroid/database/SQLException;
    :goto_0
    return-object v0
.end method

.method public updateBlockContactInfo(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)Z
    .locals 9
    .param p1, "info"    # Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    .line 118
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateBlockContactInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "phoneNum":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "phone_number"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getBlockingState()Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_blocked"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getBlockingTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "key_blocking_timestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    const/4 v3, 0x0

    .line 131
    .local v3, "count":I
    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "blockedContacts"

    const-string/jumbo v7, "phone_number=?"

    new-array v8, v4, [Ljava/lang/String;

    aput-object v1, v8, v0

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 138
    goto :goto_0

    .line 135
    :catch_0
    move-exception v5

    .line 136
    .local v5, "e":Landroid/database/SQLException;
    sget-object v6, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->LOG_TAG:Ljava/lang/String;

    const-string v7, "got exception when updating block contact info"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v5}, Landroid/database/SQLException;->printStackTrace()V

    .line 139
    .end local v5    # "e":Landroid/database/SQLException;
    :goto_0
    if-lez v3, :cond_1

    move v0, v4

    :cond_1
    return v0

    .line 120
    .end local v1    # "phoneNum":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "count":I
    :cond_2
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Info or contact is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v0
.end method
