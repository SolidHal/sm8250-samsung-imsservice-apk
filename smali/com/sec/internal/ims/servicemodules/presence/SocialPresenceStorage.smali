.class public Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;
.super Ljava/lang/Object;
.source "SocialPresenceStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;,
        Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$PresenceTable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SocialPresenceStorage"

.field private static final PRESENCE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 187
    const-string v0, "_id"

    const-string v1, "contact_id"

    const-string/jumbo v2, "raw_contact_id"

    const-string/jumbo v3, "tel_uri"

    const-string/jumbo v4, "uri"

    const-string/jumbo v5, "timestamp"

    const-string v6, "display_name"

    const-string/jumbo v7, "phone_number"

    const-string v8, "avatar_uri"

    const-string v9, "birthday"

    const-string v10, "email"

    const-string v11, "activities"

    const-string v12, "mood_text"

    const-string v13, "hyper"

    const-string v14, "facebook"

    const-string/jumbo v15, "twitter"

    const-string v16, "cyworld"

    const-string/jumbo v17, "phone_id"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->PRESENCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cache"    # Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;
    .param p3, "phoneId"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    .line 45
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    .line 48
    new-instance v0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;

    .line 49
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    .line 50
    return-void
.end method

.method private endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 277
    if-nez p1, :cond_0

    .line 278
    const-string v0, "SocialPresenceStorage"

    const-string v1, "endTransaction: db is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void

    .line 283
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 287
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_0
    return-void
.end method

.method private fillPresenceInfo(Landroid/database/Cursor;)Lcom/sec/ims/presence/PresenceInfo;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 164
    new-instance v0, Lcom/sec/ims/presence/PresenceInfo$Builder;

    invoke-direct {v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;-><init>()V

    .line 165
    const-string/jumbo v1, "tel_uri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->tel_uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 166
    const-string/jumbo v1, "uri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 167
    const-string v1, "activities"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->activities(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 168
    const-string v1, "avatar_uri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->avatar_uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 169
    const-string v1, "birthday"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->birthday(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 170
    const-string v1, "cyworld"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->cyworld(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 171
    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->display_name(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 172
    const-string v1, "email"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->email(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 173
    const-string v1, "facebook"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->facebook(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 174
    const-string v1, "hyper"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->hyper(I)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 175
    const-string v1, "mood_text"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->mood_text(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 176
    const-string/jumbo v1, "phone_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->phone_number(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 177
    const-string/jumbo v1, "timestamp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/presence/PresenceInfo$Builder;->timestamp(J)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 178
    const-string/jumbo v1, "twitter"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->twitter(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 179
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->state(I)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 180
    const-string/jumbo v1, "phone_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/presence/PresenceInfo$Builder;->phoneId(I)Lcom/sec/ims/presence/PresenceInfo$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/sec/ims/presence/PresenceInfo$Builder;->build()Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    .line 183
    .local v0, "presenceInfo":Lcom/sec/ims/presence/PresenceInfo;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/presence/PresenceInfo;->setId(J)V

    .line 184
    return-object v0
.end method

.method private fillPresenceInfo(Landroid/content/ContentValues;Lcom/sec/ims/presence/PresenceInfo;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "pi"    # Lcom/sec/ims/presence/PresenceInfo;

    .line 142
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getContactId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getContactId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getRawContactId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getRawContactId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "raw_contact_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tel_uri"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uri"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "timestamp"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "display_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getAvatarUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "avatar_uri"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getBirthday()Ljava/lang/String;

    move-result-object v0

    const-string v1, "birthday"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getActivities()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activities"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getHyper()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "hyper"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getFacebook()Ljava/lang/String;

    move-result-object v0

    const-string v1, "facebook"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTwitter()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "twitter"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getCyworld()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cyworld"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "phone_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    return-void
.end method

.method private remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uris"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SocialPresenceStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 117
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    const-string/jumbo v2, "tel_uri = ? AND phone_id = ?"

    .line 119
    .local v2, "where":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string/jumbo v4, "presence"

    invoke-virtual {p1, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 120
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v2    # "where":Ljava/lang/String;
    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method private update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/presence/PresenceInfo;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p2, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/presence/PresenceInfo;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 125
    .local v0, "values":Landroid/content/ContentValues;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " PresenceInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SocialPresenceStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/presence/PresenceInfo;

    .line 128
    .local v2, "pi":Lcom/sec/ims/presence/PresenceInfo;
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 130
    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->fillPresenceInfo(Landroid/content/ContentValues;Lcom/sec/ims/presence/PresenceInfo;)V

    .line 131
    invoke-virtual {v2}, Lcom/sec/ims/presence/PresenceInfo;->getId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const-string/jumbo v5, "presence"

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/ims/presence/PresenceInfo;->getPhoneId()I

    move-result v3

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    if-ne v3, v6, :cond_0

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/presence/PresenceInfo;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p1, v5, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    .end local v3    # "where":Ljava/lang/String;
    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {p1, v5, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 136
    .local v3, "id":J
    invoke-virtual {v2, v3, v4}, Lcom/sec/ims/presence/PresenceInfo;->setId(J)V

    .line 138
    .end local v2    # "pi":Lcom/sec/ims/presence/PresenceInfo;
    .end local v3    # "id":J
    :goto_1
    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method


# virtual methods
.method public get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;
    .locals 11
    .param p1, "teluri"    # Lcom/sec/ims/util/ImsUri;

    .line 209
    if-nez p1, :cond_0

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get: teluri-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SocialPresenceStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 215
    const-string/jumbo v0, "tel_uri = ? AND phone_id = ?"

    .line 217
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 219
    .local v7, "selectionArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 220
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 222
    .local v2, "presenceInfo":Lcom/sec/ims/presence/PresenceInfo;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->PRESENCE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string/jumbo v4, "presence"

    move-object v3, v1

    move-object v6, v0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 224
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 225
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 226
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->fillPresenceInfo(Landroid/database/Cursor;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    .line 228
    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 229
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-object v2

    .line 222
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v4
.end method

.method public get(Ljava/util/List;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/presence/PresenceInfo;",
            ">;"
        }
    .end annotation

    .line 233
    .local p1, "telUriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 234
    return-object v0

    .line 236
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 237
    .local v1, "size":I
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get: querying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " telUris"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SocialPresenceStorage"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    if-nez v1, :cond_1

    .line 239
    return-object v0

    .line 242
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v0, "sbSelection":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "tel_uri"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v2, " in ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 246
    .local v3, "teluri":Lcom/sec/ims/util/ImsUri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_2

    .line 248
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .end local v3    # "teluri":Lcom/sec/ims/util/ImsUri;
    :cond_2
    goto :goto_0

    .line 251
    :cond_3
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "phone_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v3

    .line 255
    .local v9, "selectionArgs":[Ljava/lang/String;
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get: selection = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 258
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v13, v5

    .line 260
    .local v13, "piMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/presence/PresenceInfo;>;"
    sget-object v7, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->PRESENCE_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v6, "presence"

    move-object v5, v3

    move-object v8, v2

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 262
    .local v5, "cursor":Landroid/database/Cursor;
    if-eqz v5, :cond_6

    .line 263
    :try_start_0
    iget v6, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get: presenceInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from DB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 265
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 267
    :cond_4
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->fillPresenceInfo(Landroid/database/Cursor;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v4

    .line 268
    .local v4, "presenceInfo":Lcom/sec/ims/presence/PresenceInfo;
    invoke-virtual {v4}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-interface {v13, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    nop

    .end local v4    # "presenceInfo":Lcom/sec/ims/presence/PresenceInfo;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_4

    goto :goto_2

    .line 260
    :catchall_0
    move-exception v4

    if-eqz v5, :cond_5

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v4

    .line 272
    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 273
    .end local v5    # "cursor":Landroid/database/Cursor;
    :cond_7
    return-object v13
.end method

.method public persist()V
    .locals 10

    .line 53
    const-string/jumbo v0, "persist: SQLiteDiskIOException: "

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    const-string v2, "SocialPresenceStorage"

    const-string/jumbo v3, "persist:"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->getUpdatedUriList()Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, "urisToUpdate":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->getTrashedUriList()Ljava/util/List;

    move-result-object v3

    .line 58
    .local v3, "urisToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    const/4 v4, 0x0

    .line 60
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v4, v5

    .line 64
    nop

    .line 66
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 69
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 70
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v5, "piListToUpdate":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/presence/PresenceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/util/ImsUri;

    .line 72
    .local v7, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-virtual {v8, v7}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v8

    .line 73
    .local v8, "pi":Lcom/sec/ims/presence/PresenceInfo;
    if-eqz v8, :cond_0

    .line 74
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    :cond_0
    const-string/jumbo v9, "persist: not found in cache."

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v7    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v8    # "pi":Lcom/sec/ims/presence/PresenceInfo;
    :goto_1
    goto :goto_0

    .line 79
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    goto :goto_2

    .line 92
    .end local v5    # "piListToUpdate":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/presence/PresenceInfo;>;"
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 89
    :catch_0
    move-exception v0

    goto :goto_4

    .line 87
    :catch_1
    move-exception v5

    goto :goto_5

    .line 85
    :catch_2
    move-exception v0

    goto :goto_6

    .line 81
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 82
    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 84
    :cond_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    nop

    :goto_3
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    goto :goto_7

    .line 90
    .local v0, "e":Landroid/database/SQLException;
    :goto_4
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persist: SQLException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    nop

    .end local v0    # "e":Landroid/database/SQLException;
    goto :goto_3

    .line 88
    .local v5, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    nop

    .end local v5    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    goto :goto_3

    .line 86
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persist: SQLiteFullException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    nop

    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_3

    .line 94
    :goto_7
    return-void

    .line 92
    :goto_8
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    throw v0

    .line 61
    :catch_3
    move-exception v5

    .line 62
    .restart local v5    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public reset()V
    .locals 5

    .line 97
    const-string v0, "SocialPresenceStorage"

    const-string/jumbo v1, "reset:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, 0x0

    .line 101
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 107
    const-string/jumbo v1, "phone_id = ?"

    .line 108
    .local v1, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 110
    .local v2, "args":[Ljava/lang/String;
    const-string/jumbo v3, "presence"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    return-void

    .line 102
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "args":[Ljava/lang/String;
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reset: SQLiteDiskIOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method
