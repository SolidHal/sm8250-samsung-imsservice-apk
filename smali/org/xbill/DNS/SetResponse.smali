.class public Lorg/xbill/DNS/SetResponse;
.super Ljava/lang/Object;
.source "SetResponse.java"


# static fields
.field static final CNAME:I = 0x4

.field static final DELEGATION:I = 0x3

.field static final DNAME:I = 0x5

.field static final NXDOMAIN:I = 0x1

.field static final NXRRSET:I = 0x2

.field static final SUCCESSFUL:I = 0x6

.field static final UNKNOWN:I

.field private static final nxdomain:Lorg/xbill/DNS/SetResponse;

.field private static final nxrrset:Lorg/xbill/DNS/SetResponse;

.field private static final unknown:Lorg/xbill/DNS/SetResponse;


# instance fields
.field private data:Ljava/lang/Object;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    sput-object v0, Lorg/xbill/DNS/SetResponse;->unknown:Lorg/xbill/DNS/SetResponse;

    .line 59
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    sput-object v0, Lorg/xbill/DNS/SetResponse;->nxdomain:Lorg/xbill/DNS/SetResponse;

    .line 60
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    sput-object v0, Lorg/xbill/DNS/SetResponse;->nxrrset:Lorg/xbill/DNS/SetResponse;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    .line 78
    iput p1, p0, Lorg/xbill/DNS/SetResponse;->type:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    .line 80
    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(ILorg/xbill/DNS/RRset;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "rrset"    # Lorg/xbill/DNS/RRset;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    .line 71
    iput p1, p0, Lorg/xbill/DNS/SetResponse;->type:I

    .line 72
    iput-object p2, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    .line 73
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static ofType(I)Lorg/xbill/DNS/SetResponse;
    .locals 2
    .param p0, "type"    # I

    .line 84
    packed-switch p0, :pswitch_data_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    invoke-direct {v0}, Lorg/xbill/DNS/SetResponse;-><init>()V

    .line 96
    .local v0, "sr":Lorg/xbill/DNS/SetResponse;
    iput p0, v0, Lorg/xbill/DNS/SetResponse;->type:I

    .line 97
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    .line 98
    return-object v0

    .line 90
    .end local v0    # "sr":Lorg/xbill/DNS/SetResponse;
    :pswitch_1
    sget-object v0, Lorg/xbill/DNS/SetResponse;->nxrrset:Lorg/xbill/DNS/SetResponse;

    return-object v0

    .line 88
    :pswitch_2
    sget-object v0, Lorg/xbill/DNS/SetResponse;->nxdomain:Lorg/xbill/DNS/SetResponse;

    return-object v0

    .line 86
    :pswitch_3
    sget-object v0, Lorg/xbill/DNS/SetResponse;->unknown:Lorg/xbill/DNS/SetResponse;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addRRset(Lorg/xbill/DNS/RRset;)V
    .locals 1
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;

    .line 106
    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 109
    .local v0, "l":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public answers()[Lorg/xbill/DNS/RRset;
    .locals 2

    .line 157
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 160
    .local v0, "l":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/RRset;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/xbill/DNS/RRset;

    check-cast v1, [Lorg/xbill/DNS/RRset;

    return-object v1
.end method

.method public getCNAME()Lorg/xbill/DNS/CNAMERecord;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    check-cast v0, Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/CNAMERecord;

    return-object v0
.end method

.method public getDNAME()Lorg/xbill/DNS/DNAMERecord;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    check-cast v0, Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/DNAMERecord;

    return-object v0
.end method

.method public getNS()Lorg/xbill/DNS/RRset;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    check-cast v0, Lorg/xbill/DNS/RRset;

    return-object v0
.end method

.method public isCNAME()Z
    .locals 2

    .line 139
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDNAME()Z
    .locals 2

    .line 145
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDelegation()Z
    .locals 2

    .line 133
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNXDOMAIN()Z
    .locals 2

    .line 121
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNXRRSET()Z
    .locals 2

    .line 127
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccessful()Z
    .locals 2

    .line 151
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnknown()Z
    .locals 1

    .line 115
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 190
    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 197
    :pswitch_0
    const-string/jumbo v0, "successful"

    return-object v0

    .line 196
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "DNAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 195
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CNAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "delegation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :pswitch_4
    const-string v0, "NXRRSET"

    return-object v0

    .line 192
    :pswitch_5
    const-string v0, "NXDOMAIN"

    return-object v0

    .line 191
    :pswitch_6
    const-string/jumbo v0, "unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
