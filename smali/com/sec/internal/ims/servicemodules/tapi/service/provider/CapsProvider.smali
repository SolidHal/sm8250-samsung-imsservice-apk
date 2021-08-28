.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;
.super Landroid/content/ContentProvider;
.source "CapsProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RCSAPI:I = 0x2

.field private static final RCSAPI_ID:I = 0x1

.field private static final RCSAPI_OWN:I = 0x3

.field public static final SERVICE_PROJECTION:[Ljava/lang/String;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mService:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 32
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->LOG_TAG:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilitiesLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->AUTHORITY:Ljava/lang/String;

    .line 38
    const-string v1, "_id"

    const-string v2, "contact"

    const-string v3, "capability_image_sharing"

    const-string v4, "capability_video_sharing"

    const-string v5, "capability_im_session"

    const-string v6, "capability_file_transfer"

    const-string v7, "capability_geoloc_push"

    const-string v8, "capability_extensions"

    const-string v9, "automata"

    const-string/jumbo v10, "timestamp"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->SERVICE_PROJECTION:[Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 57
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "capability/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->uriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "capability"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->uriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "capability/own"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->mService:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    return-void
.end method


# virtual methods
.method buildCursor(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;Landroid/database/MatrixCursor;)V
    .locals 9
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "cap"    # Lcom/gsma/services/rcs/capability/Capabilities;
    .param p3, "mc"    # Landroid/database/MatrixCursor;

    .line 151
    invoke-virtual {p2}, Lcom/gsma/services/rcs/capability/Capabilities;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v0

    .line 152
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "ss":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_1

    .line 160
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 162
    :cond_1
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    aput-object p1, v3, v4

    .line 163
    const/16 v5, 0x8

    invoke-virtual {p2, v5}, Lcom/gsma/services/rcs/capability/Capabilities;->hasCapabilities(I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v3, v7

    const/4 v6, 0x3

    .line 164
    const/16 v8, 0x10

    invoke-virtual {p2, v8}, Lcom/gsma/services/rcs/capability/Capabilities;->hasCapabilities(I)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    .line 165
    invoke-virtual {p2, v7}, Lcom/gsma/services/rcs/capability/Capabilities;->hasCapabilities(I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v3, v7

    const/4 v6, 0x5

    .line 166
    invoke-virtual {p2, v4}, Lcom/gsma/services/rcs/capability/Capabilities;->hasCapabilities(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x6

    .line 167
    invoke-virtual {p2, v7}, Lcom/gsma/services/rcs/capability/Capabilities;->hasCapabilities(I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x7

    aput-object v2, v3, v4

    .line 168
    invoke-virtual {p2}, Lcom/gsma/services/rcs/capability/Capabilities;->isAutomata()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x9

    .line 169
    invoke-virtual {p2}, Lcom/gsma/services/rcs/capability/Capabilities;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 162
    invoke-virtual {p3, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    .line 71
    .local v0, "bRetry":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->mService:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->getCapService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->mService:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    .line 73
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->mService:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 76
    return-object v2

    .line 79
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 80
    .local v1, "match":I
    const/4 v3, 0x0

    .line 82
    .local v3, "mc":Landroid/database/MatrixCursor;
    const/4 v4, 0x1

    if-eq v1, v4, :cond_7

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    goto/16 :goto_2

    .line 110
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->mService:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v4
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .local v4, "cap":Lcom/gsma/services/rcs/capability/Capabilities;
    nop

    .line 115
    if-nez v4, :cond_3

    .line 116
    return-object v2

    .line 118
    :cond_3
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v3, v2

    .line 119
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->buildCursor(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;Landroid/database/MatrixCursor;)V

    .line 120
    goto/16 :goto_2

    .line 111
    .end local v4    # "cap":Lcom/gsma/services/rcs/capability/Capabilities;
    :catch_0
    move-exception v4

    .line 112
    .local v4, "e":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;->printStackTrace()V

    .line 113
    return-object v2

    .line 97
    .end local v4    # "e":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->mService:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->getAllContactCapabilities()Ljava/util/Map;

    move-result-object v4

    .line 98
    .local v4, "capMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;>;"
    if-nez v4, :cond_5

    .line 99
    return-object v2

    .line 101
    :cond_5
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v3, v2

    .line 102
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "capMap.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 104
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gsma/services/rcs/capability/Capabilities;

    .line 105
    .local v6, "cap1":Lcom/gsma/services/rcs/capability/Capabilities;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7, v6, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->buildCursor(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;Landroid/database/MatrixCursor;)V

    .line 106
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;>;"
    .end local v6    # "cap1":Lcom/gsma/services/rcs/capability/Capabilities;
    goto :goto_1

    .line 107
    :cond_6
    goto :goto_2

    .line 85
    .end local v4    # "capMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;>;"
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->mService:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    new-instance v5, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->getContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v4
    :try_end_1
    .catch Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    .local v4, "cap":Lcom/gsma/services/rcs/capability/Capabilities;
    nop

    .line 90
    if-nez v4, :cond_8

    .line 91
    return-object v2

    .line 93
    :cond_8
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v3, v2

    .line 94
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->buildCursor(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;Landroid/database/MatrixCursor;)V

    .line 95
    nop

    .line 124
    .end local v4    # "cap":Lcom/gsma/services/rcs/capability/Capabilities;
    :goto_2
    return-object v3

    .line 86
    :catch_1
    move-exception v4

    .line 87
    .local v4, "e":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;->printStackTrace()V

    .line 88
    return-object v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
