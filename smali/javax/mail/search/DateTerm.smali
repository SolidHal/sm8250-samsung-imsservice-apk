.class public abstract Ljavax/mail/search/DateTerm;
.super Ljavax/mail/search/ComparisonTerm;
.source "DateTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x42e013da6884266bL


# instance fields
.field protected date:Ljava/util/Date;


# direct methods
.method protected constructor <init>(ILjava/util/Date;)V
    .locals 0
    .param p1, "comparison"    # I
    .param p2, "date"    # Ljava/util/Date;

    .line 66
    invoke-direct {p0}, Ljavax/mail/search/ComparisonTerm;-><init>()V

    .line 67
    iput p1, p0, Ljavax/mail/search/DateTerm;->comparison:I

    .line 68
    iput-object p2, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 114
    instance-of v0, p1, Ljavax/mail/search/DateTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 115
    return v1

    .line 116
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/DateTerm;

    .line 117
    .local v0, "dt":Ljavax/mail/search/DateTerm;
    iget-object v2, v0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    iget-object v3, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-super {p0, p1}, Ljavax/mail/search/ComparisonTerm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getComparison()I
    .locals 1

    .line 82
    iget v0, p0, Ljavax/mail/search/DateTerm;->comparison:I

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 3

    .line 75
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 124
    iget-object v0, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    invoke-super {p0}, Ljavax/mail/search/ComparisonTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected match(Ljava/util/Date;)Z
    .locals 3
    .param p1, "d"    # Ljava/util/Date;

    .line 92
    iget v0, p0, Ljavax/mail/search/DateTerm;->comparison:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 106
    return v2

    .line 104
    :pswitch_0
    iget-object v0, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 102
    :pswitch_1
    iget-object v0, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    return v0

    .line 100
    :pswitch_2
    iget-object v0, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 98
    :pswitch_3
    iget-object v0, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 96
    :pswitch_4
    iget-object v0, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    return v0

    .line 94
    :pswitch_5
    iget-object v0, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
