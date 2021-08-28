.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;
.super Lcom/gsma/services/rcs/contact/IContactService$Stub;
.source "ContactServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private capabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

.field private mContext:Landroid/content/Context;

.field private presenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/gsma/services/rcs/contact/IContactService$Stub;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->mContext:Landroid/content/Context;

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->presenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    .line 65
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->capabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 75
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getPresenceModule()Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->presenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    .line 76
    const-string/jumbo v1, "options"

    invoke-static {v1, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->capabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 78
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private getCursor(Lcom/gsma/services/rcs/contact/ContactId;)Landroid/database/Cursor;
    .locals 7
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.gsma.services.rcs.provider.blockedcontact/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 425
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 426
    .local v1, "cursor":Landroid/database/Cursor;
    return-object v1
.end method

.method private getRcsContacts(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;)Ljava/util/List;
    .locals 6
    .param p1, "filterContactInfo"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "rcsContacts":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getContactIds()Ljava/util/Set;

    move-result-object v1

    .line 164
    .local v1, "contacts":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/contact/ContactId;>;"
    if-nez v1, :cond_0

    .line 165
    const/4 v2, 0x0

    return-object v2

    .line 167
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/contact/ContactId;

    .line 168
    .local v3, "contactid":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getContactInfo(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    move-result-object v4

    .line 169
    .local v4, "contactInfo":Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    if-eqz v4, :cond_1

    .line 170
    invoke-interface {p1, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;->inScope(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getRcsContact(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/contact/RcsContact;

    move-result-object v5

    .line 172
    .local v5, "contact2add":Lcom/gsma/services/rcs/contact/RcsContact;
    if-eqz v5, :cond_1

    .line 173
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v3    # "contactid":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v4    # "contactInfo":Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    .end local v5    # "contact2add":Lcom/gsma/services/rcs/contact/RcsContact;
    :cond_1
    goto :goto_0

    .line 178
    :cond_2
    return-object v0
.end method


# virtual methods
.method public blockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    if-eqz p1, :cond_0

    .line 314
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Block contact:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->BLOCKED:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->setBlockingState(Lcom/gsma/services/rcs/contact/ContactId;Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    move-result-object v0

    .line 317
    .local v0, "contactInfo":Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->changeContactInfo(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v0    # "contactInfo":Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 321
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string v1, "contact is null!"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlockTime(Lcom/gsma/services/rcs/contact/ContactId;)J
    .locals 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;

    .line 450
    const-wide/16 v0, -0x1

    .line 451
    .local v0, "rcsStatusTimestamp":J
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getCursor(Lcom/gsma/services/rcs/contact/ContactId;)Landroid/database/Cursor;

    move-result-object v2

    .line 452
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->isBlock(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 453
    if-eqz v2, :cond_1

    .line 454
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 455
    const-string v3, "key_blocking_timestamp"

    .line 456
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 455
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v3

    goto :goto_0

    .line 460
    :cond_0
    const-wide/16 v0, -0x1

    .line 462
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 463
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-wide v0

    .line 451
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v3
.end method

.method public getContactIds()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 184
    .local v0, "rcsNumbers":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/contact/ContactId;>;"
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->capabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 185
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object v1

    .line 186
    .local v1, "capabilitiesArray":[Lcom/sec/ims/options/Capabilities;
    if-nez v1, :cond_0

    .line 187
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "capabilitiesArray = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v2, 0x0

    return-object v2

    .line 192
    :cond_0
    const/4 v3, 0x0

    .line 193
    .local v3, "phoneNum":Ljava/lang/String;
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v1, v2

    .line 194
    .local v5, "capabilities":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 195
    if-nez v3, :cond_1

    .line 196
    goto :goto_1

    .line 198
    :cond_1
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/gsma/services/rcs/contact/ContactUtil;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/contact/ContactUtil;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/gsma/services/rcs/contact/ContactUtil;->formatContact(Ljava/lang/String;)Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v6

    .line 199
    .local v6, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v5    # "capabilities":Lcom/sec/ims/options/Capabilities;
    .end local v6    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "capabilitiesArray":[Lcom/sec/ims/options/Capabilities;
    .end local v3    # "phoneNum":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 204
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    return-object v0
.end method

.method public getContactInfo(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    .locals 2
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 358
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;-><init>()V

    .line 359
    .local v0, "newInfo":Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setContact(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 361
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->setContactInfo(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    goto :goto_0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 365
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public getRcsContact(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/contact/RcsContact;
    .locals 13
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 116
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 120
    .local v0, "capApi":Lcom/gsma/services/rcs/capability/Capabilities;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getContactInfo(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    move-result-object v1

    .line 122
    .local v1, "contactInfo":Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    const/4 v2, 0x0

    .line 123
    .local v2, "registered":Z
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getRegistrationState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 125
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->isBlock(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v3

    .line 126
    .local v3, "blocked":Z
    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v0

    .line 129
    :cond_2
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRcsContact ContactId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", contactInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", registered = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", capApi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", DisplayName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v4, Lcom/gsma/services/rcs/contact/RcsContact;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v6

    .line 134
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    .line 135
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getBlockTime(Lcom/gsma/services/rcs/contact/ContactId;)J

    move-result-wide v10

    move-object v5, v4

    move v7, v2

    move-object v8, v0

    move v12, v3

    invoke-direct/range {v5 .. v12}, Lcom/gsma/services/rcs/contact/RcsContact;-><init>(Lcom/gsma/services/rcs/contact/ContactId;ZLcom/gsma/services/rcs/capability/Capabilities;Ljava/lang/String;JZ)V

    .line 136
    .local v4, "rcsContactInf":Lcom/gsma/services/rcs/contact/RcsContact;
    return-object v4

    .line 117
    .end local v0    # "capApi":Lcom/gsma/services/rcs/capability/Capabilities;
    .end local v1    # "contactInfo":Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    .end local v2    # "registered":Z
    .end local v3    # "blocked":Z
    .end local v4    # "rcsContactInf":Lcom/gsma/services/rcs/contact/RcsContact;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRcsContacts()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 215
    move-object/from16 v1, p0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getRcsContacts"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 217
    .local v2, "rcsContactList":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;-><init>()V

    move-object v3, v0

    .line 219
    .local v3, "contactInfo":Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->capabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 220
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 221
    .local v0, "capabilitiesArray":[Lcom/sec/ims/options/Capabilities;
    if-nez v0, :cond_0

    .line 222
    const/4 v4, 0x0

    return-object v4

    .line 225
    :cond_0
    const/4 v5, 0x0

    .line 226
    .local v5, "phoneNum":Ljava/lang/String;
    array-length v6, v0

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_6

    aget-object v8, v0, v7

    .line 227
    .local v8, "capabilities":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v8}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 228
    if-eqz v5, :cond_5

    .line 229
    new-instance v9, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v9, v5}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 230
    .local v9, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {v8}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsStatusTimestamp(J)V

    .line 231
    invoke-virtual {v8}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsDisplayName(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v8}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v10, :cond_1

    move v10, v11

    goto :goto_1

    .line 233
    :cond_1
    move v10, v12

    .line 232
    :goto_1
    invoke-virtual {v3, v10}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsStatus(I)V

    .line 234
    nop

    .line 235
    invoke-virtual {v8}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 236
    move v11, v12

    goto :goto_2

    .line 237
    :cond_2
    nop

    .line 235
    :goto_2
    invoke-virtual {v3, v11}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRegistrationState(I)V

    .line 239
    invoke-virtual {v3, v9}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setContact(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 241
    nop

    .line 242
    invoke-static {v8}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->transferCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v10

    .line 241
    invoke-virtual {v3, v10}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setCapabilities(Lcom/gsma/services/rcs/capability/Capabilities;)V

    .line 244
    new-instance v10, Lcom/gsma/services/rcs/contact/RcsContact;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v14

    .line 245
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getRegistrationState()I

    move-result v11

    if-ne v11, v12, :cond_3

    .line 246
    move v15, v12

    goto :goto_3

    .line 247
    :cond_3
    move v15, v4

    :goto_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v16

    .line 248
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v17

    .line 249
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getBlockTime(Lcom/gsma/services/rcs/contact/ContactId;)J

    move-result-wide v18

    .line 250
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->isBlock(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v11

    if-eqz v11, :cond_4

    move/from16 v20, v12

    goto :goto_4

    :cond_4
    move/from16 v20, v4

    :goto_4
    move-object v13, v10

    invoke-direct/range {v13 .. v20}, Lcom/gsma/services/rcs/contact/RcsContact;-><init>(Lcom/gsma/services/rcs/contact/ContactId;ZLcom/gsma/services/rcs/capability/Capabilities;Ljava/lang/String;JZ)V

    .line 244
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v8    # "capabilities":Lcom/sec/ims/options/Capabilities;
    .end local v9    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 255
    .end local v0    # "capabilitiesArray":[Lcom/sec/ims/options/Capabilities;
    .end local v5    # "phoneNum":Ljava/lang/String;
    :cond_6
    goto :goto_5

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    return-object v2
.end method

.method public getRcsContactsOnline()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getRcsContactsOnline"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$1;-><init>(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;)V

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getRcsContacts(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRcsContactsSupporting(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getRcsContactsSupporting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$2;-><init>(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getRcsContacts(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isBlock(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .locals 6
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;

    .line 430
    const-string v0, ""

    .line 431
    .local v0, "blocked":Ljava/lang/String;
    const/4 v1, 0x0

    .line 432
    .local v1, "mIsBlocked":Z
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->getCursor(Lcom/gsma/services/rcs/contact/ContactId;)Landroid/database/Cursor;

    move-result-object v2

    .line 433
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 434
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 435
    const-string v3, "key_blocked"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 438
    :cond_0
    const-string v3, "BLOCKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    const/4 v1, 0x1

    goto :goto_0

    .line 441
    :cond_1
    const/4 v1, 0x0

    .line 443
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "string blocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "count ==1 mIsBlocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 445
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    return v1

    .line 432
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v3
.end method

.method public setBlockingState(Lcom/gsma/services/rcs/contact/ContactId;Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "state"    # Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;-><init>()V

    .line 344
    .local v0, "newInfo":Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setBlockingState(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;)V

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setBlockingTimestamp(J)V

    .line 346
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setContact(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 348
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->setContactInfo(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)V

    .line 349
    return-object v0
.end method

.method public setContactInfo(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)V
    .locals 8
    .param p1, "infos"    # Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsStatus(I)V

    .line 374
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRegistrationState(I)V

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsStatusTimestamp(J)V

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "capabilitiesfull":Lcom/sec/ims/options/Capabilities;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "telUri":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v2

    .line 383
    .local v2, "phoneId":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->capabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    sget-object v5, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 384
    invoke-virtual {v5}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v5

    .line 383
    invoke-virtual {v3, v4, v5, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 388
    nop

    .line 389
    if-eqz v0, :cond_5

    .line 390
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsStatusTimestamp(J)V

    .line 391
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsDisplayName(Ljava/lang/String;)V

    .line 392
    nop

    .line 393
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 392
    :goto_0
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRcsStatus(I)V

    .line 394
    nop

    .line 395
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    .line 396
    :cond_1
    nop

    .line 394
    :goto_1
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setRegistrationState(I)V

    .line 397
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RcsStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getRcsStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getRegistrationState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 397
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->transferCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v3

    .line 404
    .local v3, "capabilities":Lcom/gsma/services/rcs/capability/Capabilities;
    if-eqz v3, :cond_2

    .line 405
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setCapabilities(Lcom/gsma/services/rcs/capability/Capabilities;)V

    .line 407
    :cond_2
    const/4 v4, 0x0

    .line 408
    .local v4, "presenceInfo":Lcom/sec/ims/presence/PresenceInfo;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->presenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    if-eqz v5, :cond_3

    .line 409
    invoke-interface {v5, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->getPresenceInfoByContactId(Ljava/lang/String;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v4

    .line 410
    if-nez v4, :cond_3

    .line 411
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->presenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v4

    .line 415
    :cond_3
    if-eqz v4, :cond_4

    .line 416
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "presenceInfo.getContactId() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/ims/presence/PresenceInfo;->getContactId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", presenceInfo.getDisplayName() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v4}, Lcom/sec/ims/presence/PresenceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 416
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->setPresenceInfo(Lcom/sec/ims/presence/PresenceInfo;)V

    .line 421
    :cond_4
    return-void

    .line 400
    .end local v3    # "capabilities":Lcom/gsma/services/rcs/capability/Capabilities;
    .end local v4    # "presenceInfo":Lcom/sec/ims/presence/PresenceInfo;
    :cond_5
    return-void

    .line 385
    :catch_0
    move-exception v3

    .line 386
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 387
    return-void
.end method

.method public unblockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    if-eqz p1, :cond_0

    .line 330
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unblockContact contact"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->NOT_BLOCKED:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->setBlockingState(Lcom/gsma/services/rcs/contact/ContactId;Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;

    move-result-object v0

    .line 333
    .local v0, "contactInfo":Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;->changeContactInfo(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v0    # "contactInfo":Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;
    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 337
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 328
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string v1, "contact is null!"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
