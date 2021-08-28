.class public Lcom/sec/internal/ims/servicemodules/options/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;
    }
.end annotation


# instance fields
.field private mContactId:Ljava/lang/String;

.field private mContactNumberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;",
            ">;"
        }
    .end annotation
.end field

.field private mContactNumberListLock:Ljava/lang/Object;

.field private mName:Ljava/lang/String;

.field private mRawContactId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rawId"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mRawContactId:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mName:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mContactNumberListLock:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mContactNumberList:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mContactId:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mRawContactId:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 112
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 113
    return v0

    .line 115
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 116
    return v1

    .line 118
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 119
    return v1

    .line 121
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/Contact;

    .line 122
    .local v2, "other":Lcom/sec/internal/ims/servicemodules/options/Contact;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mContactId:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 123
    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/options/Contact;->mContactId:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 124
    return v1

    .line 126
    :cond_3
    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/options/Contact;->mContactId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 127
    return v1

    .line 129
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mRawContactId:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 130
    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/options/Contact;->mRawContactId:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 131
    return v1

    .line 133
    :cond_5
    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/options/Contact;->mRawContactId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 134
    return v1

    .line 136
    :cond_6
    return v0
.end method

.method public getContactNumberList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mContactNumberListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mContactNumberList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mContactId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRawId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mRawContactId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 103
    const/16 v0, 0x1f

    .line 104
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 105
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mContactId:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 106
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mRawContactId:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 107
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public insertContactNumberIntoList(Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;)V
    .locals 5
    .param p1, "c"    # Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mContactNumberListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mContactNumberList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;

    .line 79
    .local v2, "cn":Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 80
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 82
    .end local v2    # "cn":Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;
    :cond_0
    goto :goto_0

    .line 83
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mContactNumberList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    goto :goto_1

    .line 87
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 87
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_1
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mContactId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/Contact;->mName:Ljava/lang/String;

    .line 69
    return-void
.end method
