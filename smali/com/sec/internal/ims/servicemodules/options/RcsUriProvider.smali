.class public Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;
.super Landroid/content/ContentProvider;
.source "RcsUriProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.ims.android.rcsuriprovider"

.field private static final ENABLED_PROJECTION:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "RcsUriProvider"

.field private static final N_RCSENABLE_URIS:I = 0x1

.field private static final mMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/sec/ims/options/ICapabilityService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 40
    const-string v1, "com.sec.ims.android.rcsuriprovider"

    const-string/jumbo v2, "rcsenableduri"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    const-string v0, "_id"

    const-string/jumbo v1, "sip_uri"

    const-string v2, "is_enabled"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->ENABLED_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mContext:Landroid/content/Context;

    .line 52
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;Lcom/sec/ims/options/ICapabilityService;)Lcom/sec/ims/options/ICapabilityService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;
    .param p1, "x1"    # Lcom/sec/ims/options/ICapabilityService;

    .line 33
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    return-object p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 145
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operation not supported for uri:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 133
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operation not supported for uri:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 151
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operation not supported for uri:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 5

    .line 56
    const-string v0, "RcsUriProvider"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mContext:Landroid/content/Context;

    .line 61
    const-string v1, "Connecting to CapabilityDiscoveryService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.CapabilityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider$1;-><init>(Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;)V

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v4, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 82
    const/4 v1, 0x0

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 88
    .local v1, "phoneId":I
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mMatcher:Landroid/content/UriMatcher;

    move-object v2, p1

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const-string v3, "RcsUriProvider"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 90
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "N_RCSENABLE_URIS | Operation for uri: "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->ENABLED_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v5, v0

    .line 94
    .local v5, "mc":Landroid/database/MatrixCursor;
    move-object v6, p0

    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "Binder is not initialized! Returning empty response"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v5

    .line 100
    :cond_0
    :try_start_0
    invoke-interface {v0, v1}, Lcom/sec/ims/options/ICapabilityService;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 101
    .local v0, "list":[Lcom/sec/ims/options/Capabilities;
    if-nez v0, :cond_1

    .line 102
    return-object v5

    .line 104
    :cond_1
    array-length v7, v0

    if-nez v7, :cond_2

    .line 105
    const-string v4, "N_RCSENABL_URIS: not found."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-object v5

    .line 109
    :cond_2
    const/4 v3, 0x1

    .line 110
    .local v3, "id":I
    array-length v7, v0

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_3

    aget-object v10, v0, v9

    .line 111
    .local v10, "capex":Lcom/sec/ims/options/Capabilities;
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    add-int/lit8 v12, v3, 0x1

    .line 112
    .end local v3    # "id":I
    .local v12, "id":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v8

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v4

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v3

    .line 111
    invoke-virtual {v5, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v10    # "capex":Lcom/sec/ims/options/Capabilities;
    add-int/lit8 v9, v9, 0x1

    move v3, v12

    goto :goto_0

    .line 117
    .end local v0    # "list":[Lcom/sec/ims/options/Capabilities;
    .end local v12    # "id":I
    :cond_3
    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-object v5

    .line 122
    .end local v5    # "mc":Landroid/database/MatrixCursor;
    :cond_4
    move-object v6, p0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UNDEFINED CATEGORY! | Operation for uri: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    const-string v4, "Operation not supported for uri: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 139
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operation not supported for uri:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
