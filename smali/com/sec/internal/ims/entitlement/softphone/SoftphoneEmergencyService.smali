.class public Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;
.super Ljava/lang/Object;
.source "SoftphoneEmergencyService.java"


# static fields
.field private static final E911AID_REVERSE_INDEX:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private static getContentValues([Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "fields"    # [Ljava/lang/String;
    .param p1, "accountId"    # Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 26
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x0

    aget-object v1, p0, v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x1

    aget-object v1, p0, v1

    const-string v2, "houseNumber"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v1, 0x2

    aget-object v1, p0, v1

    const-string v2, "houseNumExt"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v1, 0x3

    aget-object v1, p0, v1

    const-string/jumbo v2, "streetDir"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v1, 0x4

    aget-object v1, p0, v1

    const-string/jumbo v2, "street"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x5

    aget-object v1, p0, v1

    const-string/jumbo v2, "streetNameSuffix"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v1, 0x6

    aget-object v1, p0, v1

    const-string/jumbo v2, "streetDirSuffix"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v1, 0x7

    aget-object v1, p0, v1

    const-string v2, "city"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/16 v1, 0x8

    aget-object v1, p0, v1

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/16 v1, 0x9

    aget-object v1, p0, v1

    const-string/jumbo v2, "zip"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/16 v1, 0xa

    aget-object v1, p0, v1

    const-string v2, "addressAdditional"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/16 v1, 0xb

    aget-object v2, p0, v1

    const-string v3, "E911AID"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/16 v2, 0xc

    aget-object v2, p0, v2

    const-string v3, "expire_date"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v2, "formattedAddressBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 45
    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, p0, v3

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    aget-object v4, p0, v3

    .local v4, "field":Ljava/lang/String;
    goto :goto_2

    .line 46
    .end local v4    # "field":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v4, ""

    .line 51
    .restart local v4    # "field":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .end local v4    # "field":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "formattedAddress"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-object v0
.end method


# virtual methods
.method public compareAndSaveE911Address(Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .param p2, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkLocations size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {p2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildAddressUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 65
    .local v0, "uri":Landroid/net/Uri;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    .local v2, "location":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "locationFields":[Ljava/lang/String;
    array-length v4, v3

    const/16 v5, 0xd

    if-ge v4, v5, :cond_0

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    aget-object v4, v3, v4

    .line 72
    .local v4, "e911AID":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "networkLocation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget-object v8, v3, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v5, "E911AID=?"

    .line 75
    .local v5, "selection":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v4, v6, v7

    .line 76
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;->getContentValues([Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v7

    .line 77
    .local v7, "values":Landroid/content/ContentValues;
    iget-object v8, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v0, v7, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 78
    .local v8, "affectedRows":I
    if-nez v8, :cond_1

    .line 79
    iget-object v9, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v0, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 81
    .end local v2    # "location":Ljava/lang/String;
    .end local v3    # "locationFields":[Ljava/lang/String;
    .end local v4    # "e911AID":Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v8    # "affectedRows":I
    :cond_1
    goto :goto_0

    .line 82
    :cond_2
    return-void
.end method
