.class public Lcom/sec/internal/helper/Iso8601;
.super Ljava/lang/Object;
.source "Iso8601.java"


# static fields
.field private static final ALL_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field private static final MILLISECONDS_FORMAT:Ljava/text/DateFormat;

.field private static final MILLISECONDS_FORMAT_GMT:Ljava/text/DateFormat;

.field private static final MINUTES_FORMAT:Ljava/text/DateFormat;

.field private static final MINUTES_FORMAT_GMT:Ljava/text/DateFormat;

.field private static final MONTH_FORMAT:Ljava/text/DateFormat;

.field private static final SECONDS_FORMAT:Ljava/text/DateFormat;

.field private static final SECONDS_FORMAT_GMT:Ljava/text/DateFormat;

.field private static final YEAR_FORMAT:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/helper/Iso8601;->YEAR_FORMAT:Ljava/text/DateFormat;

    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 52
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/helper/Iso8601;->MONTH_FORMAT:Ljava/text/DateFormat;

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/helper/Iso8601;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/helper/Iso8601;->MINUTES_FORMAT_GMT:Ljava/text/DateFormat;

    .line 69
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mmZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/helper/Iso8601;->MINUTES_FORMAT:Ljava/text/DateFormat;

    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 77
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/helper/Iso8601;->SECONDS_FORMAT_GMT:Ljava/text/DateFormat;

    .line 83
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 84
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/helper/Iso8601;->SECONDS_FORMAT:Ljava/text/DateFormat;

    .line 90
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/helper/Iso8601;->MILLISECONDS_FORMAT_GMT:Ljava/text/DateFormat;

    .line 97
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/helper/Iso8601;->MILLISECONDS_FORMAT:Ljava/text/DateFormat;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/Iso8601;->ALL_FORMATS:Ljava/util/List;

    .line 104
    sget-object v1, Lcom/sec/internal/helper/Iso8601;->SECONDS_FORMAT:Ljava/text/DateFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/sec/internal/helper/Iso8601;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/sec/internal/helper/Iso8601;->SECONDS_FORMAT_GMT:Ljava/text/DateFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/sec/internal/helper/Iso8601;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/sec/internal/helper/Iso8601;->MILLISECONDS_FORMAT_GMT:Ljava/text/DateFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/sec/internal/helper/Iso8601;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/sec/internal/helper/Iso8601;->MILLISECONDS_FORMAT:Ljava/text/DateFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/sec/internal/helper/Iso8601;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/sec/internal/helper/Iso8601;->MINUTES_FORMAT_GMT:Ljava/text/DateFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/sec/internal/helper/Iso8601;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/sec/internal/helper/Iso8601;->MINUTES_FORMAT:Ljava/text/DateFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/sec/internal/helper/Iso8601;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/sec/internal/helper/Iso8601;->DATE_FORMAT:Ljava/text/DateFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/sec/internal/helper/Iso8601;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/sec/internal/helper/Iso8601;->MONTH_FORMAT:Ljava/text/DateFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/sec/internal/helper/Iso8601;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/sec/internal/helper/Iso8601;->YEAR_FORMAT:Ljava/text/DateFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/sec/internal/helper/Iso8601;->ALL_FORMATS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormat;

    .line 115
    .local v1, "df":Ljava/text/DateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 116
    .end local v1    # "df":Ljava/text/DateFormat;
    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-class v0, Lcom/sec/internal/helper/Iso8601;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/sec/internal/helper/Iso8601;->SECONDS_FORMAT_GMT:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 130
    .end local p0    # "date":Ljava/util/Date;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatMillis(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-class v0, Lcom/sec/internal/helper/Iso8601;

    monitor-enter v0

    .line 145
    :try_start_0
    sget-object v1, Lcom/sec/internal/helper/Iso8601;->MILLISECONDS_FORMAT_GMT:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 145
    .end local p0    # "date":Ljava/util/Date;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 8
    .param p0, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/text/ParseException;
        }
    .end annotation

    const-class v0, Lcom/sec/internal/helper/Iso8601;

    monitor-enter v0

    .line 161
    const/16 v1, 0x2d

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 162
    .local v1, "timezoneStart":I
    const/16 v2, 0x54

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 163
    .local v2, "indexOfT":I
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 165
    .local v3, "lastColon":I
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-le v1, v4, :cond_0

    if-le v3, v1, :cond_0

    if-le v1, v2, :cond_0

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object p0, v4

    .line 169
    :cond_0
    sget-object v4, Lcom/sec/internal/helper/Iso8601;->ALL_FORMATS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/text/DateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .local v6, "format":Ljava/text/DateFormat;
    :try_start_1
    invoke-virtual {v6, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v4

    .line 172
    :catch_0
    move-exception v7

    .line 175
    .end local v6    # "format":Ljava/text/DateFormat;
    goto :goto_0

    .line 177
    :cond_1
    :try_start_2
    new-instance v4, Ljava/text/ParseException;

    const-string/jumbo v6, "unsupported format for date %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    .end local v1    # "timezoneStart":I
    .end local v2    # "indexOfT":I
    .end local v3    # "lastColon":I
    .end local p0    # "date":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
