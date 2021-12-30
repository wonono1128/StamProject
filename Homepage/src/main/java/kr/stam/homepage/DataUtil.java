package kr.stam.homepage;


import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@MapperScan(basePackages = "kr.stam.homepage.dao.*")
public @Configuration @EnableTransactionManagement class DataUtil {
	
	  @Bean(name = "dataSource")
	    public DataSource dataSource() {
	    	DataSourceBuilder dataSourceBuilder = DataSourceBuilder.create();
	    	
	    	dataSourceBuilder.driverClassName("com.mysql.cj.jdbc.Driver");
	        dataSourceBuilder.url("jdbc:mysql://localhost:3306/stam?serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true");
	        dataSourceBuilder.username("root");
//	        dataSourceBuilder.password("1234");
	        dataSourceBuilder.password("px6546px!");
//	        dataSourceBuilder.password("asdzxc12!@");
	        return dataSourceBuilder.build();
	    }
    @Bean
    public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
        SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
        PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
        bean.setDataSource(dataSource);
        bean.setMapperLocations(resolver.getResources("classpath:kr/stam/homepage/dao/xml/*.xml"));
        return bean.getObject();
    }

    @Bean
    public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) throws Exception {
        return new SqlSessionTemplate(sqlSessionFactory);
    }
    
  
}
