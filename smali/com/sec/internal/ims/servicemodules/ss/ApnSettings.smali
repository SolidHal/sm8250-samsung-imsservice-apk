.class public Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;
.super Ljava/lang/Object;
.source "ApnSettings.java"


# static fields
.field private static final APN_PROJECTION:[Ljava/lang/String;

.field private static final COLUMN_PORT:I = 0xd

.field private static final COLUMN_PROXY:I = 0xc

.field private static final COLUMN_TYPE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ApnSettings"


# instance fields
.field private final mDebugText:Ljava/lang/String;

.field private final mProxyAddress:Ljava/lang/String;

.field private final mProxyPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 41
    const-string/jumbo v0, "type"

    const-string v1, "mmsc"

    const-string v2, "mmsproxy"

    const-string v3, "mmsport"

    const-string v4, "name"

    const-string v5, "apn"

    const-string v6, "bearer_bitmask"

    const-string/jumbo v7, "protocol"

    const-string/jumbo v8, "roaming_protocol"

    const-string v9, "authtype"

    const-string v10, "mvno_type"

    const-string v11, "mvno_match_data"

    const-string/jumbo v12, "proxy"

    const-string/jumbo v13, "port"

    const-string/jumbo v14, "server"

    const-string/jumbo v15, "user"

    const-string/jumbo v16, "password"

    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->APN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "proxyAddr"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .param p3, "debugText"    # Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->mProxyAddress:Ljava/lang/String;

    .line 138
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->mProxyPort:I

    .line 139
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->mDebugText:Ljava/lang/String;

    .line 140
    return-void
.end method

.method private static getDebugText(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "APN ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 118
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    goto :goto_1

    .line 123
    :cond_0
    if-lez v1, :cond_1

    .line 124
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "types"    # Ljava/lang/String;
    .param p1, "apnType"    # Ljava/lang/String;

    .line 152
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 153
    return v1

    .line 155
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 156
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 155
    .end local v5    # "type":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    .restart local v5    # "type":Ljava/lang/String;
    :cond_2
    :goto_1
    return v1

    .line 161
    .end local v5    # "type":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading APN using name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnSettings"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "selection":Ljava/lang/String;
    const/4 v2, 0x0

    .line 76
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->trimWithNullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 78
    const-string v0, "apn=?"

    .line 79
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    move-object v2, v3

    .line 82
    :cond_0
    nop

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/subId/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    .line 82
    move-object v5, p0

    move-object v9, v0

    move-object v10, v2

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 90
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_4

    .line 91
    const/4 v5, 0x0

    .line 93
    .local v5, "proxyAddress":Ljava/lang/String;
    const/16 v6, 0x50

    .line 94
    .local v6, "proxyPort":I
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 96
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 97
    const/16 v4, 0xc

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->trimWithNullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .end local v5    # "proxyAddress":Ljava/lang/String;
    .local v4, "proxyAddress":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 99
    const/16 v5, 0xd

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->trimWithNullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .local v5, "portString":Ljava/lang/String;
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v1

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v7

    .line 103
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid port "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", use 80"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->getDebugText(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v4, v6, v7}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_2
    return-object v1

    .line 82
    .end local v4    # "proxyAddress":Ljava/lang/String;
    .end local v5    # "portString":Ljava/lang/String;
    .end local v6    # "proxyPort":I
    :catchall_0
    move-exception v1

    if-eqz v3, :cond_3

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1

    .line 109
    :cond_4
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 111
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method private static trimWithNullCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 133
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getProxyAddress()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->mProxyPort:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->mDebugText:Ljava/lang/String;

    return-object v0
.end method
